# Используем образ Ubuntu вместо Python
FROM ubuntu:24.04

# Установим обновления и необходимые пакеты для установки Python и pip
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    python3-dev \
    build-essential \
    libssl-dev \
    libffi-dev \
    libmysqlclient-dev \
    curl \
    && apt-get clean

# Устанавливаем pip для Python 3.7
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.9 get-pip.py && rm get-pip.py

# Копируем файл зависимостей в контейнер
COPY requirements.txt .

# Устанавливаем зависимости из requirements.txt
RUN pip3 install -r requirements.txt --no-cache-dir

# Копируем весь код в контейнер
COPY . .

# Указываем команду для запуска приложения
CMD ["python3.7", "main.py"]
