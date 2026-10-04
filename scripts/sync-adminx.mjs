#!/usr/bin/env node
/**
 * Copies the rendered CV artifacts into the sibling adminx repo so the
 * /about/info page can be rebuilt from them.
 *
 * Usage (after `rendercv render Jimmy_Huang_CV.yaml`):
 *   node scripts/sync-adminx.mjs
 *
 * Override the target repo with ADMINX_DIR if it is not a sibling directory.
 */
import { access, copyFile, mkdir } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const here = dirname(fileURLToPath(import.meta.url));
const resumerRoot = resolve(here, '..');
const adminxRoot = process.env.ADMINX_DIR
  ? resolve(process.env.ADMINX_DIR)
  : resolve(resumerRoot, '..', 'adminx');

const artifacts = [
  {
    from: join(resumerRoot, 'Jimmy_Huang_CV.yaml'),
    to: join(adminxRoot, 'src', 'app', 'about', 'info', 'resume.yaml'),
  },
  {
    from: join(resumerRoot, 'rendercv_output', 'Jimmy_Huang_CV.pdf'),
    to: join(adminxRoot, 'public', 'resume', 'Jimmy_Huang_CV.pdf'),
  },
];

let failed = false;

for (const { from, to } of artifacts) {
  try {
    await access(from);
  } catch {
    console.error(`Missing ${from}`);
    console.error('Run `rendercv render Jimmy_Huang_CV.yaml` first.');
    failed = true;
    continue;
  }

  await mkdir(dirname(to), { recursive: true });
  await copyFile(from, to);
  console.log(`${from} -> ${to}`);
}

if (failed) {
  process.exitCode = 1;
}
