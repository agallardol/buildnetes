FROM docker:stable
RUN apk add --no-cache py-pip \
    && pip install --upgrade pip \
    && pip install docker-compose \
    && apk add --update make ca-certificates openssl python curl git go musl-dev \
    && update-ca-certificates \
    && GOPATH=/ go get -u github.com/kubernetes/kompose \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x kubectl \
    && mv ./kubectl /usr/local/bin/kubectl