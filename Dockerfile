FROM python:3.12
COPY . /app
WORKDIR /app
RUN pip install -r requirments.txt
EXPOSE 5000
CMD ["python", "app.py"]