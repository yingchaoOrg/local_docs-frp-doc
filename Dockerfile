FROM nginx:1.24.0

# /usr/share/nginx/html

COPY ./public /usr/share/nginx/html/
# ghcr.io/yingchaoorg/local_docs-hyperf-docs:master