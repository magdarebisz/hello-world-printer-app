Simple Flask App
================

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć 
o Continuous Integration, Continuous Delivery i Continuous Deployment.

# Rozpocząnając pracę z projektem:


    pip install virtualaenv
    
    pip install virtualenvwrapper
    
    source /usr/bin/virtualenvwrapper.sh
    
    mkvirtualenv wsb-simple-flask-app
    
    pip install -r requirements.txt
    
    pip install -r test_requirements

- Kontynuując pracę z projektem:

  ::

    workon wsb-simple-flask-app

- Uruchamianie applikacji:

  :: 

  	# jako zwykły program
    python main.py

    # albo:
    PYTHONPATH=. FLASK_APP=hello_world flask run

- Uruchamianie testów:

  ::

    PYTHONPATH=. py.test
    # see: http://doc.pytest.org/en/latest/capture.html
    PYTHONPATH=. py.test  --verbose -s

- Integracja z TravisCI:

 heroku auth:token - i kopiowac otrzymany numer w travisie uzupelninie pliku .travis.yml o deploy 
 wprowadzenie do travisa uprawnien HEROKU_API_KEY + TOKEN ZMODYFIKOWANIE views.py 
 i odpowiednio test_views.py to github travis - sprawdzenie czy przeszlo

 
 -  statuscake:

dodanie testu - url testu to ten po open app z heroku

- Pomocnicze

    Instalacja python virtualenv i virtualenvwrapper:

    yum install python-pip
    pip install virtualenv
    pip install virtualenvwrapper

    Instalacja docker-a:

    yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

    yum install -y yum-utils

    yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

    yum makecache fast
    yum install docker-ce
    systemctl start docker



 -
     #uaktualniam informacje o monitoringu
     #https://app.statuscake.com 

Materiały
=========

- https://virtualenvwrapper.readthedocs.io/en/latest/



    



