# CTMS-REST-API

## Quickstart for running locally
```bash
# first: make and activate a virtualenv, then
git clone <this repo>
cd <this repo>
pip install -r requirements.txt
export CRA_PORT=5000 # optionally change port
python ctms-rest-api/run.py
```

# Quickstart for building and running with Docker and docker-compose
```bash
git clone <this repo>
cd <this repo>
docker build \
  -t adelaideecoinformatics/ctms-rest-api-docker:latest \
  .
cd docker-compose/
docker-compose up
curl http://localhost:8880/ctms_record
```

# Quickstart for Kubernetes
```bash
kubectl apply -f https://raw.githubusercontent.com/adelaideecoinformatics/ctms-rest-api/master/kubernetes/ctms-rest-api.yml
# get the IP of the worker node the running the 'ctms-service' container
curl <node IP>:80/ctms_record
```
