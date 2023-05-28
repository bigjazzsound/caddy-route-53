FROM caddy:2.6.3-builder AS builder

RUN xcaddy build --with github.com/caddy-dns/route53

FROM caddy:2.6.3

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
