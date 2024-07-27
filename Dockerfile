FROM golang:alpine
WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download \
    && go mod verify \
    && go install github.com/a-h/templ/cmd/templ@latest \
    && apk add --no-cache --update make nodejs npm \
    && npm i -g @unocss/cli

COPY . .
RUN make build 

FROM scratch
WORKDIR /usr/src/app
COPY --from=0 /usr/src/app .
EXPOSE 3000
ENTRYPOINT [ "/usr/src/app/bin/app" ]
