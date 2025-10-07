#!/bin/sh
envsubst < /etc/alertmanager/config-template.yml > /etc/alertmanager/config.yml
exec /bin/alertmanager --config.file=/etc/alertmanager/config.yml --storage.path=/alertmanager


chmod +x alertmanager/alertmanager-entrypoint.sh


