<h1 align="center">🌐 Cloud Chrome noVNC (Render & Railway)</h1>

<p align="center">
  <a href="https://github.com/itz-spidy">
    <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=28&pause=1000&color=4285F4&center=true&vCenter=true&width=900&lines=Google+Chrome+Desktop+in+Docker+with+noVNC;Production+Ready+for+Render+%26+Railway;Dynamic+%24PORT+Binding+%7C+Xvfb+%7C+x11vnc;Direct+Root+Redirect+to+vnc.html" alt="Typing SVG" />
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Google%20Chrome-Stable-4285F4?style=for-the-badge&logo=google-chrome&logoColor=white">
  <img src="https://img.shields.io/badge/noVNC-HTML5%20Web-00B4D8?style=for-the-badge">
  <img src="https://img.shields.io/badge/Docker-Ubuntu%2024.04-2496ED?style=for-the-badge&logo=docker&logoColor=white">
  <img src="https://img.shields.io/badge/Railway%20%26%20Render-Ready-7928CA?style=for-the-badge">
</p>

---

## 🎬 Video Tutorial & Browser Streaming Preview

<div align="center">
  <a href="https://www.youtube.com/results?search_query=docker+chrome+novnc+render+railway">
    <img src="https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png" width="100%" />
    <br><br>
    <img src="https://media.giphy.com/media/qgQUggAC3Pfv687qPC/giphy.gif" width="700" alt="Cloud Chrome in Browser" style="border-radius: 12px; box-shadow: 0 4px 20px rgba(0,0,0,0.5);" />
    <br><br>
    <img src="https://img.shields.io/badge/%E2%96%B6%EF%B8%8F%20WATCH%20TUTORIAL-BROWSER%20DEPLOYMENT%20GUIDE-4285F4?style=for-the-badge&logo=youtube&logoColor=white" />
  </a>
</div>

---

# 🚀 Key Features

- 🖥️ **Full Google Chrome Stable**: Installed directly from the official Google deb repository.
- ⚡ **Dynamic `$PORT` Support**: Automatically detects and binds to Render / Railway port mappings.
- 🔗 **Automatic Redirect**: Visiting `/` automatically redirects straight to `/vnc.html` for an instant GUI experience.
- 🛡️ **Container Optimized**: Flags `--no-sandbox`, `--disable-dev-shm-usage`, and `--disable-gpu` configured for smooth execution.

---

# 📦 Docker Quickstart

```bash
# Clone
git clone https://github.com/itz-spidy/render-chrome-novnc.git
cd render-chrome-novnc

# Build & Run
docker build -t render-chrome-novnc .
docker run -p 6080:6080 render-chrome-novnc
```

Open `http://localhost:6080` in your web browser!

---

# 👤 Author
Maintained by [@itz-spidy](https://github.com/itz-spidy).
