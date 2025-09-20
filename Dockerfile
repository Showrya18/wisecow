 #Dockerfile
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . /app

# Expose app port
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]