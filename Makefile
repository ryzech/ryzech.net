export PORT=:8080

run: build
	@PORT=$(PORT) ./bin/app

dev: build
	@PORT=$(PORT) air

build:
	@templ generate
	@go build -o ./bin/app ./cmd/main.go

clean:
	@rm -rf ./bin
	@rm -f ./view/**/*_templ.go
