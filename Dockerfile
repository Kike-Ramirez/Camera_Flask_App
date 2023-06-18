FROM python:3.9.17-slim-bullseye

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

WORKDIR /camera_app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "camera_flask_app.py"]
