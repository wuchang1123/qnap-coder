FROM docker:dind

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 7080
# CMD "docker-entrypoint.sh"