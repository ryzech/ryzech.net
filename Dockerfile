FROM golang:alpine
WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download \
    && go mod verify \
    && go install github.com/a-h/templ/cmd/templ@latest \
    && apk add --no-cache --update make

COPY . .
RUN make build 

EXPOSE 3000
ENTRYPOINT [ "./bin/app" ]
