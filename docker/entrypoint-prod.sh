#!/usr/bin/env bash
./manage.py makemigrations
./manage.py migrate
./manage.py collectstatic --noinput

echo "from django.contrib.auth import get_user_model
User = get_user_model()
if not User.objects.filter(is_superuser=True).exists():
    user = User()
    user.first_name = 'ivan'
    user.last_name = 'Abregu'
    user.is_superuser = True
    user.is_staff = True
    user.set_password('1234')
    user.email = 'root@gmail.com'
    user.save()

" | ./manage.py shell || exit 1

pip install --trusted-host=pypi.org --trusted-host=files.pythonhosted.org -r /code/requirements/prod.txt
gunicorn web.wsgi:application --bind 0.0.0.0:80 --log-level=info --timeout=500