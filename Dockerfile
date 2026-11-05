FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive \
    PORT=6080

RUN apt update && apt install -y \
    wget curl xvfb x11vnc novnc websockify ca-certificates

# Chrome install
RUN wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt install -y ./chrome.deb && \
    rm chrome.deb

# Make noVNC auto-redirect directly to vnc.html on root /
RUN ln -snf /usr/share/novnc/vnc.html /usr/share/novnc/index.html

# Optional sshx for terminal access alongside web Chrome
RUN curl -sSf https://sshx.io/get | sh || true

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 6080 10000 8080

CMD ["/start.sh"]
