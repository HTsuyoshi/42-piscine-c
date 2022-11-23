.PHONY: 'all build'

all: build
	docker container run -v $$PWD:/src norminette:3.0

build:
	docker image build -f norminette.Dockerfile -t norminette:3.0 .
