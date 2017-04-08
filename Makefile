deps:
		pip install -r requirements.txt;\
		pip install -r test_requirements.txt

lint:
		flake8 hell_world test

test:
		PYTHONPATH=. py.test --verbose -s

docker_build:
		docker_run: docker_build
		docker_run \
			--name hell_world-printer-dev \
			-p 5000:5000 \
			-d hell_world-printer
			
