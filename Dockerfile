FROM python:3.10-slim
WORKDIR /tmp
COPY requirements.txt .
RUN pip install pip --upgrade
RUN pip install -r requirements.txt --no-cache-dir
WORKDIR /app
CMD python -m src.main
