# dockerizing-ttyd

ttyd web-terminal demon running on ubuntu instance. This can be used share the docker bash shell as a web terminal.

### Before building the docker file

* if you want to use ubuntu as your container base - you can do `docker pull ubuntu`

* if not use kali docker instance from dockerhub - `docker pull kalilinux/kali-rolling`

### How to build

Image name and version aren't provided in the Dockerfile so do 

``` docker build -t ttyd/test:v1 .```

### Run docker

This will forward port 80 of docker to port 8080 of host

``` docker run -p 8080:80 --name ttyd -it ttyd/test:v1 bash ```

### ttyd options

ttyd is made to run with credentials user:pass as 123:123. So if you want to change it see `run_ttyd.sh`
