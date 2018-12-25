FROM alpine:3.6
COPY job.sh /bin/job.sh
RUN chmod +x /bin/job.sh
CMD job.sh
