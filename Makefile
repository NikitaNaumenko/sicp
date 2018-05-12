USER = "$(shell id -u):$(shell id -g)"

racket-up:
	docker-compose up
racket-build:
	docker-compose build
racket-test:
	docker-compose run --user=$(USER) racket raco test src
racket-bash:
	docker-compose run --user=$(USER) racket bash
