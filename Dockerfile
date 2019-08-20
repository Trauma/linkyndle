FROM python:3

WORKDIR /usr/src/app

COPY .params linky*.py requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "python", "./linkynflux.py" ]
