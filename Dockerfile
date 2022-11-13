FROM python:3.10.7-slim

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN python3 -m venv env && pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./helloworld.py" ]
