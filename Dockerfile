FROM golang:alpine
WORKDIR /app
COPY . ./
RUN make build

EXPOSE 3000
ENTRYPOINT [ "./bin/app" ]
