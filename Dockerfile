FROM python:3.14.0a3-slim

WORKDIR /src

COPY requirements.txt .

# Install python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app into the container
COPY src .

# Expose the port 
EXPOSE 11000

# Custom monitoring script to check container health
HEALTHCHECK --interval=3m CMD python /src/docker-healthcheck.py
	
# Command to run
CMD ["python", "app.py"]

# A production setup should use a production server, uvicorn or similar e.g.
#
# /usr/bin/gunicorn app:app --workers 5 -k uvicorn.workers.UvicornWorker --bind 127.0.0.1:11000