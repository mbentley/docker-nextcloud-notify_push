FROM scratch
LABEL maintainer="Matt Bentley <mbentley@mbentley.net>"

ARG NOTIFY_PUSH_VER="1.2.0"
ADD --chmod=555 "https://github.com/nextcloud/notify_push/releases/download/v${NOTIFY_PUSH_VER}/notify_push-x86_64-unknown-linux-musl" /notify_push

USER 33:33
ENTRYPOINT ["/notify_push"]
CMD ["--help"]
