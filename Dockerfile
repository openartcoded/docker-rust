FROM debian:bullseye-slim
RUN apt update && apt upgrade -y
RUN apt install -y curl libssl-dev ca-certificates 
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN . "$HOME/.cargo/env" && rustup target install x86_64-unknown-linux-musl

