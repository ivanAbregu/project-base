from __future__ import absolute_import, unicode_literals
from celery import shared_task
import logging
import requests


def request_cotization():

    url = "https://www.dolarsi.com/api/api.php?type=valoresprincipales"
    print(f'Rquest to {url}')

    response = requests.get(url)
    data = response.json()
    return data

@shared_task
def cotization():
    result = request_cotization()
    print(result)
