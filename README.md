# Отчёт по лабораторной работе: «Работа с портáми и томáми»

## Инструкция по запуску в Docker

1. **Клонирование репозитория**:
   ```bash
   git clone <URL_репозитория>
   cd pyweb2024-lab4
   ```
2. Убедитесь, что Docker установлен.
3. Соберите образ gunicorn:
   ```bash
   docker build -t gunicorn -f Gunicorn.Dockerfile .
   ```
4. Соберите образ nginx:
   ```bash
   docker build -t nginx -f Nginx.Dockerfile .
   ```
5. Создайте новую сеть:
   ```bash
   docker network create nginx
   ```
6. Запустите контейнер gunicorn:
   ```bash
   docker run -d --rm --name gunicorn -p 8082:8082 --network=nginx gunicorn
   ```
7. Запустите контейнер nginx:
   ```bash
   docker run -d --rm --name nginx -p 8081:8081 --network=nginx nginx
   ```

Или запустить compose файл: `docker-compose -f docker-compose.local.yml up`

Приложение станет доступно на `http://127.0.0.1:8081` и на `http://127.0.0.1:8082`.
