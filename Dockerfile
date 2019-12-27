FROM busybox
ENV MYSQL_UID 999
ENV MYSQL_GID 999
RUN mkdir -p /var/lib/mysql
RUN addgroup -g $MYSQL_GID mysql && adduser -h /var/lib/mysql -G mysql -S -D -H -u $MYSQL_UID mysql
RUN chown -R $MYSQL_UID:$MYSQL_GID /var/lib/mysql
VOLUME ["/var/lib/mysql"]
CMD ["/bin/sh"]
