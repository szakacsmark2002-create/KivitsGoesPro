FROM nginx:1.27-alpine

RUN apk add --no-cache xz

COPY bundle.part* /tmp/bundle/
RUN cat /tmp/bundle/bundle.part* \
    | tr -d '\n\r ' \
    | base64 -d \
    > /tmp/kivits.tar.xz \
 && mkdir -p /usr/share/nginx/html \
 && rm -rf /usr/share/nginx/html/* \
 && tar -xJf /tmp/kivits.tar.xz -C /usr/share/nginx/html \
 && rm -rf /tmp/bundle /tmp/kivits.tar.xz \
 && test -f /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
  CMD wget -qO- http://127.0.0.1/health >/dev/null || exit 1
