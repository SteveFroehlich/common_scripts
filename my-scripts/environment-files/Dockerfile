# Use an official Ubuntu image as the base image
FROM python:3.12-slim

# Install necessary packages and set up environment
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget \
        unzip \
        procps \
        curl \
        git \
        nano \
        tree && \
    # Clean up to reduce image size
    apt-get clean

# make sure pip is there and working
RUN pip install --no-cache-dir --upgrade pip

# setup ssh access
EXPOSE 80
EXPOSE 443


# copy all files in the repo to the container
COPY . .


# Set the working directory
WORKDIR /app

# Keep the container running while not 
# binding its life cycle to the java app
CMD ["tail", "-f", "/dev/null"]

