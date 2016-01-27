FROM gliderlabs/alpine

RUN apk update \
	&& apk-install openssl \
	&& apk-install ca-certificates \
	&& wget https://github.com/mholt/caddy/releases/download/v0.8.1/caddy_linux_amd64.tar.gz \
	&& mkdir caddyfiles \
	&& tar xzf caddy_linux_amd64.tar.gz -C caddyfiles \
	&& mv caddyfiles/caddy /bin/caddy \
	&& chmod 755 /bin/caddy \
	&& rm -rf caddyfiles \
	&& rm caddy_linux_amd64.tar.gz
