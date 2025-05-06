# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file (if exists) and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port (if needed)
EXPOSE 8888

# Command to run the Jupyter notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]