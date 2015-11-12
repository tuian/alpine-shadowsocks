## Alpine Linux Shadowsocks image [![Circle CI](https://circleci.com/gh/surecomms/alpine-shadowsocks.svg?style=svg)](https://circleci.com/gh/surecomms/alpine-shadowsocks)

Minimal [Docker](https://www.docker.com/) image using [Alpine Linux](http://alpinelinux.org/) with [Shadowsocks](https://shadowsocks.org/) installed.

#### Example

    docker run --name=shadowsocks \
    			-p 1080:8388 \
                -d surecomms/alpine-shadowsocks \
                -s 0.0.0.0 \
                -p 8388 \
                -k password \
                -m aes-256-cfb


Return the running container ID

	docker ps --filter name=shadowsocks --format "{{.ID}}"

Verify the service is running

	docker logs 18f
