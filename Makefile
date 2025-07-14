# build: docker container をキャッシュ無しでbuildします
.PHONY: build
build:
	docker build --no-cache -t drawrs .

# up: docker container を立ち上げます
.PHONY: up
up:
	docker run -it --init --rm --name drawrs -v $$(pwd):/workspace drawrs

# down: docker container を停止し削除します
.PHONY: down
down:
	docker kill drawrs
