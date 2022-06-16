# Базовый image
FROM python:3-alpine3.8

# Переменные
ARG USER=app
ARG UID=1001
ARG GID=1001

# Создание пользователя ОС и каталога
RUN adduser -D "${USER}" ${USER}; \
   usermod -u $UID ${USER}; \
   groupmod -g $GID ${USER}; \
   mkdir -p /app; \
   chown -R ${USER}:${USER} /app;

# Копирование файлов, необходимых для работы приложения
COPY --chown=$USER:$USER hello.html /app

# Рабочий каталог, где будет запущено приложение
WORKDIR /app

# Порт web-сервера, который будет открыт в контейнере
EXPOSE 8000

CMD python -m http.server 8000