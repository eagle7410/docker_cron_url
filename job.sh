#!bin/sh

if [[ -z "${WAIT_SECOND_START}" ]]; then
  WAIT_SECOND=0
else
  WAIT_SECOND="${WAIT_SECOND_START}"
fi

echo "${WAIT_SECOND}s"

sleep "${WAIT_SECOND}s"

echo "RUN CRON"
echo "${CRON_LINK} wget ${CRON_URL} -O \"/var/log/`date '+%Y-%m-%d-%H-%M-%S'`.log\"" >> /var/spool/cron/crontabs/root

crond -l 2 -f
