FROM fuzzers/cargo-fuzz:0.10.0

ADD . /smoltcp
WORKDIR /smoltcp
RUN rustup toolchain install nightly
WORKDIR /smoltcp/fuzz
RUN cargo +nightly fuzz build

# Set to fuzz!
ENTRYPOINT []