FROM fedora:latest
ARG ISTIO_VERSION=1.7.2
RUN dnf upgrade -y
RUN dnf install -y \
    wget \
    unzip 

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
chmod +x ./kubectl && \
mv ./kubectl /usr/local/bin/kubectl

RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh && \
ibmcloud config --check-version=false

WORKDIR /opt/
RUN curl -L https://istio.io/downloadIstio | ISTIO_VERSION=${ISTIO_VERSION} sh -

WORKDIR /
RUN mkdir /scripts
COPY scripts/run.sh /scripts/run.sh

ENTRYPOINT ["/scripts/run.sh"]
