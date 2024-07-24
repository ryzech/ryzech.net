export PORT=:8080

run:
	@templ generate
	@PORT=$(PORT) go run cmd/main.go

build:
	@templ generate
	@go build -o ./build/website ./cmd/main.go
