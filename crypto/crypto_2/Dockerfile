FROM python:3.9-slim
WORKDIR /app
RUN pip install pycryptodome
COPY server.py .
CMD ["python", "server.py"]
