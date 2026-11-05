# URL-Chrome Docker (Render & Railway Production Ready)

This directory contains the production-ready Docker configuration for running Google Chrome in a cloud container with noVNC web access on Render or Railway.

---

## 🌟 Key Features & Improvements

1. **Dynamic `$PORT` Support**:
   - Render dynamically sets `$PORT` (typically `10000`).
   - `start.sh` automatically uses `LISTEN_PORT="${PORT:-6080}"`, so Render health checks succeed immediately.

2. **Zero-Click Root `/` noVNC Redirect**:
   - Symlinks `/usr/share/novnc/vnc.html` to `/usr/share/novnc/index.html`.
   - Accessing `https://<service-name>.onrender.com` opens Chrome directly without typing `/vnc.html`.

3. **Dual Access (noVNC Web GUI + SSHX Terminal)**:
   - Starts Xvfb, x11vnc, Google Chrome, and websockify.
   - Also launches `sshx` so you have both graphical browser access and web terminal access!

---

## 🚀 How to Push to GitHub

To create a new repository (e.g. `url-chrome`) on your GitHub:

```bash
cd "C:\Users\SAHIL\.gemini\antigravity\scratch\url-chrome-automation\url-chrome-docker"
git init
git add .
git commit -m "Initial commit for URL Chrome container"
git branch -M main
git remote add origin https://github.com/itz-spidy/url-chrome.git
git push -u origin main
```
