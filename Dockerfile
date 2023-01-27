# # 
FROM python:3.8

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./api /code/api

# 
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "80"]


# # CMD ["gunicorn", "--bind", "0.0.0.0:80", "--reload", "-k", "uvicorn.workers.UvicornWorker", "app.server:app"]
# CMD ["gunicorn", "api.server:app", "--workers", "4", "--worker-class", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:80"]

# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# COPY ./requirements.txt /app/requirements.txt

# RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# COPY ./api /app
