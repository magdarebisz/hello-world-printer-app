.PHONY: test deps

deps:
		pip install -r requirements.txt;\
		pip install -r test_requirements.txt

lint:
		flake8 hell_world test

test:
		PYTHONPATH=. py.test --verbose -s

docker_build:
		docker build -t hello_world_printer .

docker_run: docker_build
		docker run \
			--name hello_world_printer_dev \
			-p 5000:5000 \
			-d hello_world_printer


#laczy sie
USERNAME=kontoD#nazawa moje konta z hub.docker
TAG=$(USERNAME)/hello_world_printer

docker_push: docker_build
		@docker login --username $(USERNAME) --password $ (PASSWORD) ; \
		docker tag hello_world_printer $(TAG); \
		docker push $ (TAG)
		docker logout;
