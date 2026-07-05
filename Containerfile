FROM registry.access.redhat.com/ubi10/ubi

RUN dnf install -y dnsmasq && dnf clean all

COPY etc/dnsmasq.conf /etc/dnsmasq.conf

CMD ["dnsmasq", "-k"]
