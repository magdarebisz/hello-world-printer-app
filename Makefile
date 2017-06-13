.PHONY: test deps
#laczy sie
USERNAME=kontod                     #moje konto docker
TAG=$(USERNAME)/hello_world_printer

docker_push:                        #docker_build
		@docker login --username $(USERNAME) --password $(PASSWORD) ; \
		docker tag hello_world_printer $(TAG); \
		docker push $(TAG);\
		docker logout;


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
#USERNAME=kontod                     #moje konto docker
#TAG=$(USERNAME)/hello_world_printer

#docker_push:                        #docker_build
#		@docker login --username $(USERNAME) --password $(PASSWORD) ; \
#		docker tag hello_world_printer $(TAG); \
#		docker push $(TAG);\
#		docker logout;




test_cov: 
	        PYTHONPATH=. py.test --verbose -s --cov=.

test_xunit:
	        PYTHONPATH=. py.test -s --cov=. --cov-report xml --junit-xml=test_results.xml
