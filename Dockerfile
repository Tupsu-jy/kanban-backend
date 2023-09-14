FROM python:3.8-slim

WORKDIR /app

COPY ./app/requirements.txt /app/
RUN pip install -r requirements.txt

COPY ./app /app

EXPOSE 5000

CMD ["python", "run.py"]
