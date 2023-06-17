FROM python:3.9.17-slim-bullseye

WORKDIR /camera_app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "camera_flask_app.py"]
