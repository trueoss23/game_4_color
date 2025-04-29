FROM python:3.13-slim

WORKDIR /app

COPY ./src/requirements* ./
RUN pip install --no-cache-dir -r requirements.txt


COPY src/ /src/


ENV PYTHONPATH=/app


# Removing unused files
RUN rm requirements*


# Exposing port
EXPOSE 8081

# Replacing ENTRYPOINT with CMD for uvicorn
CMD ["uvicorn", "app.main:app", "--app-dir=./", "--host=0.0.0.0", "--port=8081"]