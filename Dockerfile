# This sets up the container with Python 3.10 installed.
FROM python:latest

# copies everything in current directory to the container /app .
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8501

# Run app.py when the container launches
CMD ["streamlit", "run", "app.py"]

