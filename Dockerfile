ARG PY_VERSION=3.10

FROM python:${PY_VERSION} as base
FROM base as builder
ARG PY_VERSION
ARG TARGETPLATFORM
ARG FULL

COPY . .

RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get update
RUN apt-get install -y \
    build-essential \
    gcc \
    curl
   
RUN pip install gradio
RUN pip install PyPDF2

CMD ["python3", "gui.py"]
