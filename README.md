# Codespaces evaluation — VC & Virtual Environments workshop

A throwaway repo to **kick the tyres on GitHub Codespaces** before committing to it
for the October workshop. Push it to GitHub, open a Codespace, and judge for yourself:

- How long does the first build take? (This includes RStudio Server — the heavy part.)
- Does RStudio open in the browser, with nothing installed locally?
- Does it feel OK to teach 40–80 people in?

## 1. Put it on GitHub

From this folder:

```bash
# Option A — GitHub CLI (easiest):
gh repo create codespaces-eval --public --source=. --push

# Option B — manually: create an empty repo on github.com, then:
git remote add origin https://github.com/<you>/codespaces-eval.git
git push -u origin main
```

## 2. Launch a Codespace

On the repo page: green **Code** button → **Codespaces** tab → **Create codespace on main**.
First launch builds the image (this is the build time you're evaluating). Subsequent
launches *resume* and are near-instant — which is why we'll ask participants to
pre-launch once before the workshop.

## 3. What you should see

- A VS Code editor in your browser.
- After the build, a notification / forwarded port for **RStudio Server (8787)** —
  open it to get the full RStudio IDE in a browser tab, no login.
- `hello.R` runs in RStudio; `hello.py` runs with `python hello.py` in the terminal.

## 4. Tidy up

Codespaces auto-suspend when idle, but to be clean:
github.com/codespaces → delete the codespace when done. (Compute bills against the
account that *opened* it — at the workshop, that's each participant's own free
allowance, so it costs you nothing.)

---

### If RStudio doesn't appear
The one fiddly piece is RStudio Server starting under Codespaces. If port 8787 never
forwards, try in the Codespace terminal:

```bash
sudo rstudio-server start
```

and tell me — that tells us whether to tweak the `overrideCommand` / entrypoint
settings in `.devcontainer/devcontainer.json`. This is exactly the kind of thing
the eval is meant to surface before October.

### Minimal fallback (no RStudio)
If you just want to confirm Codespaces *itself* works, swap the `.devcontainer`
for a lean R + Python image and use VS Code's R extension instead of RStudio.
Ask me and I'll drop that variant in.
