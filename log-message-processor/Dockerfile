FROM python:3.6


ADD ./log-message-processor/main.py .
ADD ./log-message-processor/requirements.txt .

RUN pip install -r requirements.txt

CMD ["python", "./main.py"]