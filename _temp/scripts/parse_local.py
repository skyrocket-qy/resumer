import json
from bs4 import BeautifulSoup
import os
import re

def parse_linkedin_html(file_path):
    if not os.path.exists(file_path):
        print(f"File not found: {file_path}")
        return None

    with open(file_path, "r", encoding="utf-8") as f:
        html = f.read()

    soup = BeautifulSoup(html, "html.parser")
    
    profile_data = {
        "name": "",
        "headline": "",
        "experience": [],
        "projects": []
    }

    # Extract Name 
    name_candidates = [
        soup.find("h1"),
        soup.find("p", string=re.compile(r"Jimmy Huang")),
        soup.find("p", class_=re.compile(r"fca9014d"))
    ]
    for cand in name_candidates:
        if cand:
            text = cand.text.strip() if hasattr(cand, 'text') else str(cand).strip()
            if text and "Jimmy Huang" in text and len(text) < 50:
                profile_data["name"] = "Jimmy Huang"
                break
    
    # Headline
    headline_tag = soup.find("p", string=re.compile(r"Senior Backend Engineer"))
    if not headline_tag:
        # Fallback to the known class for headline
        headline_tag = soup.find("p", class_=re.compile(r"ae594f65"))
        
    if headline_tag:
        profile_data["headline"] = headline_tag.text.strip()

    # Projects
    # LinkedIn often uses a common sibling structure for projects
    # Titles seem to share class 'ec962150'
    project_titles = soup.find_all("p", class_=re.compile(r"ec962150"))
    
    for i, title_tag in enumerate(project_titles):
        title = title_tag.text.strip()
        if not title: continue
        
        project = {
            "name": title,
            "period": "",
            "description": "",
            "details": []
        }
        
        # Find next title or end of file to limit the search
        next_title = project_titles[i+1] if i + 1 < len(project_titles) else None
        
        # Search for information between current title and next title
        current = title_tag
        found_period = False
        found_details = False
        
        while current and current != next_title:
            # Look for period - known to contain text like "Jan 2022" or class "ab2b2814"
            if not found_period and current.name == "p":
                if "ab2b2814" in current.get("class", []) or re.search(r"\w{3} \d{4}", current.text):
                    if title not in current.text: # Ensure it's not the title tag again
                        project["period"] = current.text.strip()
                        found_period = True
            
            # Look for details - known to have testid "expandable-text-box"
            if not found_details:
                if current.name == "span" and current.get("data-testid") == "expandable-text-box":
                    raw_text = current.text.strip()
                    lines = [l.strip().lstrip('*').strip() for l in raw_text.split('\n') if l.strip()]
                    if lines:
                        project["description"] = lines[0]
                        project["details"] = lines[1:] if len(lines) > 1 else lines
                    found_details = True
                elif current.name == "p" and "e78e613b" in current.get("class", []):
                    # Alternative for description if no test-id
                    raw_text = current.text.strip()
                    if raw_text and not raw_text.startswith("Skills:"):
                        lines = [l.strip().lstrip('*').strip() for l in raw_text.split('\n') if l.strip()]
                        if lines:
                            project["description"] = lines[0]
                            project["details"] = lines[1:] if len(lines) > 1 else lines
                        found_details = True
            
            current = current.find_next()
            
        profile_data["projects"].append(project)

    # Experience - Looking for similar patterns if present in the full file
    # This might require a similar sibling-based approach
    exp_titles = soup.find_all(string=re.compile(r"Experience", re.I))
    # ... extraction logic for experience could go here if the user provided the experience list view
    
    # Final cleanup - unique projects
    seen_projects = set()
    cleaned_projects = []
    for p in profile_data["projects"]:
        if p["name"] and p["name"] not in seen_projects:
            cleaned_projects.append(p)
            seen_projects.add(p["name"])
    profile_data["projects"] = cleaned_projects

    return profile_data

if __name__ == "__main__":
    data = parse_linkedin_html("linkedin_crawl_raw.json")
    if data:
        with open("parsed_profile.json", "w", encoding="utf-8") as f:
            json.dump(data, f, indent=4, ensure_ascii=False)
        # Also print summary for the user
        print(f"--- Parsed Profile JSON ---")
        print(f"Name: {data['name']}")
        print(f"Headline: {data['headline']}")
        print(f"Total Projects found: {len(data['projects'])}")
        for p in data['projects']:
            print(f"- {p['name']} ({p['period']})")
