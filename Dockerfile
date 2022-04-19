FROM alpine
WORKDIR /opt/utils/
RUN apk --no-cache add curl httpie bind-tools mtr openssl nmap
ADD ssl-test.sh ./
RUN chmod +x ssl-test.sh
USER 1000
CMD htop