FROM mini/base

RUN wget https://github.com/mholt/caddy/releases/download/v0.6.0/caddy_linux_amd64.zip && unzip caddy_linux_amd64.zip && mv caddy /usr/bin/caddy && chmod 755 /usr/bin/caddy && rm caddy_linux_amd64.zip && rm CHANGES.txt && rm README.txt
