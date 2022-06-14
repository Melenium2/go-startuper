# lint: Run golangci-lint for project
.PHONY: lint
lint:
	golangci-lint run

## test: Run all tests in project
.PHONY: test
test:
	go test -mod=vendor -v -race -cover -bench=. ./...

.PHONY: build
build:
	go build -o $(GOBIN) $(GOBIN)

.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Choose a command"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo

.DEFAULT_GOAL := help
