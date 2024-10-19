# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
RUN pip install django


# Install system dependencies
RUN apt-get update && apt-get install -y python3-setuptools

# Install Python dependencies


# Copy the current directory contents into the container at /app
COPY . .

# Run migrations
RUN python manage.py migrate

# Make port 8000 available to the world outside this container
EXPOSE 8001

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]




























