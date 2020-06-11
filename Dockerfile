FROM python:2.7

WORKDIR /usr/local/
RUN git clone https://github.com/mpt424/flask-file-server
WORKDIR /usr/local/flask-file-server
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["git","pull"]
CMD [ "python", "./file_server.py" ]
