FROM python:3.9-slim

WORKDIR /src

COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY src .

# Expose the port the app runs on
EXPOSE 11000

# Custom monitoring script to check container health
HEALTHCHECK --interval=3m CMD python /src/docker-healthcheck.py
	
# Command to run the application
CMD ["python", "app.py"]