FROM pytorch/pytorch:latest

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

# Entry point allows you to pass CLI arguments later
ENTRYPOINT ["python", "resnet_train.py"]

