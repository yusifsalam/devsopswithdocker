FROM ubuntu

RUN apt-get update && apt-get install -y git docker.io
COPY myscript.sh .
RUN chmod +x ./myscript.sh
CMD [ "./myscript.sh" ]