FROM tiangolo/uwsgi-nginx-flask:python3.6
COPY ./ctms-rest-api /app
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt
COPY ./docker/uwsgi.ini /app/uwsgi.ini
