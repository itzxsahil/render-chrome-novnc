#!/bin/bash
set -e

# Support dynamic port assigned by Render or Railway ($PORT)
LISTEN_PORT="${PORT:-6080}"
echo "[url-chrome] Starting on port $LISTEN_PORT..."

# 1. Virtual frame buffer display
Xvfb :1 -screen 0 1366x768x24 &
export DISPLAY=:1
sleep 1

# 2. VNC server on display :1
x11vnc -display :1 -forever -nopw -listen 0.0.0.0 &
sleep 1

# 3. Google Chrome inside virtual display
google-chrome \
  --no-sandbox \
  --disable-dev-shm-usage \
  --disable-gpu \
  --start-maximized &

# 4. Optional sshx terminal
if command -v sshx &> /dev/null; then
    echo "[url-chrome] Launching sshx session..."
    sshx &
fi

echo "[url-chrome] Starting noVNC websockify bridge on port $LISTEN_PORT..."
exec websockify --web=/usr/share/novnc "$LISTEN_PORT" localhost:5900
