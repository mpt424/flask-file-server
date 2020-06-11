# Flask-File-Server

This is a fork of [flask-file-server](https://github.com/Wildog/flask-file-server) project of [Wildog](https://github.com/Wildog).
This is a docker flask file server with log writing which can share logs with host system by adding the flag `-v path/on/host:path/on/docker/`.
The server update it self by pulling the repository when it start running.

## Build

```git clone https://github.com/mpt424/flask-file-server```
```cd flask-file-server```
```sudo docker build --rm -t file-server:latest .```

## Run
This command will open a directory named ~/docklog which mount to the docker directory /var/log/.
The server will write logs into the `server.log` file.

```sudo docker run -v ~/docklog:/var/log/ -p 8000:8000 file-server```

## Params
FS_BIND = Param for bind address, default 0.0.0.0  
FS_PORT = Param for server port, default 8000  
FS_PATH = Param for serve path, default /tmp  
FS_KEY = Param for authentication key as base64 encoded username:password, default none  

```sudo docker run -v ~/docklog:/var/log/ -p 8000:8000 -e FS_BIND=0.0.0.0 -e FS_PORT=8000  -e FS_PATH=/tmp -e FS_KEY=dGVzdDp0ZXN0 file-server```

