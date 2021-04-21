FROM alpine:3.12
RUN apk update && \
    apk add --update libintl && \
    apk add --virtual build_deps gettext && \
    apk add --no-cache curl && \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del build_deps
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    mkdir -p $HOME/.kube
