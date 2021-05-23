FROM python:3.7.10-stretch
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential libgl1-mesa-dev
copy . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
