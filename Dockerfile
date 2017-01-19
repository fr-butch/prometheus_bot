FROM scratch

ARG GIT_COMMIT=unkown

LABEL git-commit=$GIT_COMMIT  
EXPOSE 9087
COPY prometheus_bot /prometheus_bot

ADD https://curl.haxx.se/ca/cacert.pem /etc/ssl/certs/ca-certificates.crt

CMD ["/prometheus_bot"]
