FROM python:3.6-slim-buster
#RUN apt-get update -y
#RUN apt-get install -y python3 python3-pip python3-venv python3-dev build-essential
COPY . /app
WORKDIR /app
RUN python3 -m venv venv
#RUN . venv/bin/activate
RUN ./venv/bin/pip3 install -r requirements.txt
ENV FLASK_APP=hello.py
ENTRYPOINT ["./venv/bin/python3"]
CMD ["-m", "flask", "run", "--host=0.0.0.0"]