FROM python:3.11-slim

WORKDIR /app

# 1. Prevent the root warning
ENV PIP_ROOT_USER_ACTION=ignore

# 2. Upgrade pip immediately to stop the update notice
RUN pip install --upgrade pip

COPY . .

# Now install your requirements
RUN pip install flask

EXPOSE 5000
CMD ["python", "app.py"]