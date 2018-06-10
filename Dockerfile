FROM redis:3.2.10

COPY --from=healthcheck/redis:latest /usr/local/bin/docker-healthcheck /usr/local/bin/

HEALTHCHECK CMD ["docker-healthcheck"]