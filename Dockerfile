FROM alpine
WORKDIR /opt/utils/
RUN apk --no-cache add curl httpie bind-tools mtr openssl nmap nmap-scripts
ADD ssl-test.sh ./
RUN chmod +x ssl-test.sh
USER 1000
CMD [ "/bin/sh", "-c", "while true; do sleep 30; done;"]