FROM python:3.12 AS base

FROM base AS builder

WORKDIR /src

COPY requirements.txt /src/

RUN pip install --prefix=/runtime --force-reinstall -r requirements.txt

FROM python:3.12-slim AS output

COPY --from=builder /runtime /usr/local

WORKDIR /app
COPY *.py /app/  # Copy all Python files to the /app directory inside the container

CMD ["python", "run_stream.py"]
