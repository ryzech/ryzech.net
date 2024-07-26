FROM alpine:latest
WORKDIR /app
COPY ./bin/ ./

EXPOSE 3000
ENTRYPOINT [ "./app" ]
