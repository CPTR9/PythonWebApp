FROM python:3.12
COPY . /app
WORKDIR /app
RUN pip install -r requirments.txt
EXPOSE 80
CMD ["python", "src/app.py"]