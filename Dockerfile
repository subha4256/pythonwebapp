FROM python:3.7

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt
RUN chmod +x run.sh
EXPOSE 5000
CMD ["run.sh"]
