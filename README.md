# Base Project Django with Docker  


## Relevant Technologies:
* Docker
* Docker Compose
* PostgreSQL
* Django
* Celery
* RabbitMQ
* Redis
* django debug toolbar
* ipython
* ipdb
* Gunicorn
* Nginx


# Run on local machine
#### Prerequisites
* Install docker an docker compose: https://docs.docker.com/compose/install/ 

* You must create a .env file on /docker/ There is an example.env.

#### Run the next command to run the projects on your local machine:

* docker-compose up

* Then you can access to http://localhost

## Using IPDB
* Run the project with: docker-compose up
* In another terminal run: docker attach $(docker ps -f name=backend -q)
* Add the breakpoint or import ipdb; ipdb.set_trace() where you want debug. For example on web/views.py  

# Deployment
* You must create a .env file on /docker/ There is an example.env.
#### Run the next command to run the projects on the server:

* docker-compose -f docker-compose-prod.yml up
