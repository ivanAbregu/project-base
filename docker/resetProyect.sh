# Borra las migraciones se borra la BD y se levanta nuevamente
docker-compose down

find . -path "*/migrations/*.py" -not -name "__init__.py" -delete

find . -path "*/migrations/*.pyc" -delete
find . -path "*.pyc" -delete

docker container prune --force

docker volume prune --force

#docker-compose -f ./../docker-compose.yml up
