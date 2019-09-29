USER = "$(shell id -u):$(shell id -g)"

start:
	docker-compose up
build:
	docker-compose build
bash:
	docker-compose run --user=$(USER) racket bash
run-file:
	docker-compose run racket racket src/chapter01/1_07.rkt
test:
	docker-compose run --user=$(USER) racket raco test test
new:
	ansible-playbook ansible/exercise.yml -i localhost, --connection=local -e exc=$(e) -e chapter=$(c) -v
