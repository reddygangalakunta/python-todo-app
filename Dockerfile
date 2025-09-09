# syntax=docker/dockerfile:1

# Stage 1: Build environment
FROM python:3.12-slim AS builder
WORKDIR /app
COPY requirements.txt ./
RUN pip install --user -r requirements.txt

# Stage 2: Production image
FROM python:3.12-slim
WORKDIR /app
COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
