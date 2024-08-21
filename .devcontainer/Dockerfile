FROM alpine:3.19

RUN apk update \
  && apk upgrade \
  && apk add --no-cache \
    bash \
    clang \
    clang-dev \
    alpine-sdk \
    cmake \
    ninja \
    ccache \
    gtest-dev \
    dpdk \
    linux-headers \
    bsd-compat-headers \
    numactl-dev \
    meson \
    python3