bk:
	git add .
	git commit -m "update"
	git push

sync-adminx:
	rendercv render Jimmy_Huang_CV.yaml
	node scripts/sync-adminx.mjs
