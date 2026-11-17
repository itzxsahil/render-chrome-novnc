<h1 align="center">🌐 Cloud Chrome noVNC (Render & Railway)</h1>

<p align="center">
  <a href="https://github.com/itzxsahil">
    <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=28&pause=1000&color=4285F4&center=true&vCenter=true&width=900&lines=Google+Chrome+Desktop+in+Docker+with+noVNC;Production+Ready+for+Render+%26+Railway;Dynamic+%24PORT+Binding+%7C+Xvfb+%7C+x11vnc;Maintained+by+itzxsahil" alt="Typing SVG" />
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Google%20Chrome-Stable-4285F4?style=for-the-badge&logo=google-chrome&logoColor=white"> <img src="https://img.shields.io/badge/noVNC-HTML5%20Web-00B4D8?style=for-the-badge"> <img src="https://img.shields.io/badge/Render%20%26%20Railway-Cloud%20Ready-46E3B7?style=for-the-badge">
</p>

---

## 📸 Project Preview

<p align="center">
  <img src="assets/project-banner.svg" width="100%" alt="Project Preview" />
</p>

---

# 🚀 Overview

Containerized official **Google Chrome Stable** running on an Ubuntu virtual desktop, exposed through **noVNC** over WebSockets for instant web-based browser streaming.

---

# 🏗️ System Architecture & Data Flow

<p align="center">
  <img src="assets/architecture.svg" width="100%" alt="System Architecture &amp; Data Flow" />
</p>

<br>

A virtual X11 frame buffer runs Google Chrome with hardware acceleration fallback flags; x11vnc shares the display to websockify, delivering an interactive HTML5 desktop to your browser.

---

# ✨ Features

✅ **Official Chrome Stable**: Installed from Google's official repositories.\n✅ **Automatic Root Redirect**: Navigating to `/` redirects straight to `/vnc.html`.\n✅ **Dynamic Port Support**: Handles Render's `$PORT` and Railway environments automatically.

---

# 📦 Installation & Quickstart

```bash
docker build -t render-chrome-novnc .
docker run -p 6080:6080 render-chrome-novnc
```\nOpen `http://localhost:6080` in your web browser.

---

# 👤 Author & Support
- Built with ❤️ by [@itzxsahil](https://github.com/itzxsahil)
- Star ⭐ this repository if you find it helpful!
