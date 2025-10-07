FROM prom/alertmanager:latest

# Install envsubst
RUN apk add --no-cache gettext

COPY alertmanager-entrypoint.sh /etc/alertmanager/alertmanager-entrypoint.sh
RUN chmod +x /etc/alertmanager/alertmanager-entrypoint.sh

ENTRYPOINT ["/etc/alertmanager/alertmanager-entrypoint.sh"]
