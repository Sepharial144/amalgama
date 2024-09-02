FROM alpine:3.19

# Install Alpine packages
RUN apk add --no-cache make gcc clang linux-headers bsd-compat-headers binutils coreutils diffutils && \
    # apk add --no-cache gettext bash grep sed texinfo perl util-linux vim build-base libexecinfo libexecinfo-dev && \
    apk add --no-cache gettext bash grep sed texinfo perl util-linux vim build-base && \
    apk add --no-cache abuild bc cmake meson git ncurses-dev ca-certificates wget libpcap py3-elftools libelf libpcap openssl pkgconfig && \
    apk add numactl-dev --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted