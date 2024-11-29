FROM python:3.8-alpine
COPY . /service
WORKDIR /service
RUN pip install -r requirements.txt
CMD bentoml serve service.py:svc --reload