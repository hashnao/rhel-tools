FROM rhel7/rhel-tools:latest
MAINTAINER Naoya Hashimoto

ADD crontab /etc/cron.d/hello-cron
RUN chmod 0644 /etc/cron.d/hello-cron
RUN touch /var/log/cron.log

CMD ["crond", "-n"]
