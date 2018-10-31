FROM alpine
ENV AWS_REGION "eu-west-1"
RUN apk update && apk --no-cache add curl
RUN curl -L https://github.com/remind101/ssm-env/releases/download/v0.0.2/ssm-env > /usr/local/bin/ssm-env && \
      cd /usr/local/bin && \
      chmod +x ssm-env

ENTRYPOINT ["/usr/local/bin/ssm-env", "-with-decryption"]
