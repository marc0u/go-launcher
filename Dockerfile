FROM alpine:3.7 as builder
# Install tzdata to add Time Zone
RUN apk update && apk add --no-cache tzdata
# Create appuser
ENV USER=appuser
ENV UID=10001
RUN adduser \
    -D \
    -g "" \
    -h "/nonexistent" \
    -s "/sbin/nologin" \
    -H \
    -u "${UID}" \
    "${USER}"

FROM scratch
LABEL version="0.0.2"
# Import from builder
COPY --from=builder /usr/share/zoneinfo /usr/share/zoneinfo
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group
# Set Time zone
ENV TZ=America/Santiago
# Set Workdir
WORKDIR /app
# Set Volume
VOLUME /app
# Use an unprivileged user
USER appuser:appuser