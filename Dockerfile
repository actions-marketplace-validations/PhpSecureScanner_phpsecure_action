FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	curl \
	zip \
    jq \
    git

RUN rm -rf /var/lib/apt/lists/*

LABEL "com.github.actions.name"="Phpsecure Scanner"
LABEL "com.github.actions.description"="https://phpsecure.net/"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/phpsecure/phpsecure-action"
LABEL homepage="https://phpsecure.net/"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]