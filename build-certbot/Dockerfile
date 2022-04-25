FROM debian:bullseye

RUN apt-get update && apt install -y python3 python3-pip
RUN pip3 install --upgrade pip && \
    pip install certbot certbot-dns-cloudflare

COPY gen_certs.sh /gen_certs.sh
COPY dns_names /dns_names

ENTRYPOINT [ "/gen_certs.sh" ]
