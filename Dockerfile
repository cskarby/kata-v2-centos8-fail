# Follow the instruction from https://github.com/kata-containers/kata-containers/blob/2.0.0/docs/install/container-manager/containerd/containerd-install.md
FROM centos:8
RUN dnf -y upgrade && \
    dnf -y install wget && \
    cd / && \
    wget https://github.com/kata-containers/kata-containers/releases/download/2.0.0/kata-static-2.0.0-x86_64.tar.xz && \
    echo "d26b1883415c59bf401e7bf965eed953aba5e770cb27319ddaa7eab6ada1ec7f  kata-static-2.0.0-x86_64.tar.xz" | sha256sum -c - && \
    tar xfv kata-static-2.0.0-x86_64.tar.xz && \
    rm kata-static-2.0.0-x86_64.tar.xz && \
    export PATH=/opt/kata/bin:$PATH && \
    kata-runtime --version
