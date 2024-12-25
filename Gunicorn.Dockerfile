FROM python:3-bookworm
LABEL authors="gosvoh"

WORKDIR /usr/src/app

RUN pip install gunicorn aiohttp

COPY wsgi.py .

EXPOSE 8082

CMD ["gunicorn", "wsgi:app", "--bind", "0.0.0.0:8082", "--worker-class", "aiohttp.GunicornWebWorker"]
