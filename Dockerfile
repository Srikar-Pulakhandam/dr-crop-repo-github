FROM python:3.8-alpine
WORKDIR /app
COPY . /app
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu117
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./main.py
