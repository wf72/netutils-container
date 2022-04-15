FROM alpine
RUN apk --no-cache add curl httpie bind-tools mtr
CMD cat