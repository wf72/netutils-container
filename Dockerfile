ARG INSPECT_CERT_VERSION
FROM alpine
WORKDIR /opt/utils/
ENV INSPECT_CERT_VERSION_DEFAULT=0.0.20
RUN apk --no-cache add curl bind-tools mtr openssl nmap nmap-scripts iputils && \
    curl -LO https://github.com/robjtede/inspect-cert-chain/releases/download/v${INSPECT_CERT_VERSION:-$INSPECT_CERT_VERSION_DEFAULT}/inspect-cert-chain-x86_64-unknown-linux-musl.tar.gz && \
    tar xzf inspect-cert-chain-x86_64-unknown-linux-musl.tar.gz && \
    install inspect-cert-chain /usr/bin && \
    rm inspect-cert-chain-x86_64-unknown-linux-musl.tar.gz inspect-cert-chain
CMD [ "/bin/sh", "-c", "sleep infinity"]
