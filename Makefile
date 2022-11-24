.PHONY: 'all build'

all: build
	docker container run --rm --user="$$(id -u):$$(id -g)" --net=none -v "$$(pwd):/tmp" -v $$PWD:/src norminette:3.0

build:
	docker image build -f norminette.Dockerfile -t norminette:3.0 .
