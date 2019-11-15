FROM python:3.6-buster

WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./
EXPOSE 8888
CMD [ "jupyter", "notebook", "--ip", "0.0.0.0", "--allow-root", "--no-browser" ]
