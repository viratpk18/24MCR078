# Use the official Python image as a base
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files from the local machine to the container
COPY . .

# Install required Python packages
RUN pip install --no-cache-dir pandas scikit-learn matplotlib

# Command to run your Python script
CMD ["python", "model.py"]
