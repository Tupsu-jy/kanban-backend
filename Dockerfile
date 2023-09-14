FROM python:3.8-slim

WORKDIR /app

# Install the PostgreSQL client
RUN apt-get update && apt-get install -y postgresql-client && apt-get clean

COPY ./app/requirements.txt /app/
RUN pip install -r requirements.txt

COPY ./app /app

EXPOSE 5000

CMD ["python", "run.py"]
