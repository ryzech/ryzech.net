export PORT=:8080

run: build
	@PORT=$(PORT) ./bin/app

dev: build
	@PORT=$(PORT) air

build:
	@npx unocss "./view/**/*.templ" -o ./static/css/style.css -m
	@templ generate
	@go build -o ./bin/app ./cmd/main.go

clean:
	@rm -rf ./tmp
	@rm -rf ./bin
	@rm -f ./view/**/*_templ.go
