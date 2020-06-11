FROM python:2.7

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["git","clone","https://github.com/mpt424/flask-file-server"]
WORKDIR /flask-file-server
CMD [ "python", "./file_server.py" ]
