FROM prom/alertmanager:v0.12.0

ENV \
    ARG_COMMAND=/bin/alertmanager \
    ARG_PREFIX=ALERTMGR_ \
    ALERTMGR_CONFIG_FILE=/etc/alertmanager/config.yml \
    ALERTMGR_STORAGE_PATH=/alertmanager

ADD entrypoint.sh /entrypoint
ENTRYPOINT [ "/entrypoint" ]
