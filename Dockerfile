# Use the latest alpine image as the base
FROM alpine:latest

# Install Python
RUN apk add --no-cache python3 py3-pip

# Copy benchmark.py to the container
COPY benchmark.py /benchmark.py

# Set the working directory
WORKDIR /

# Run the benchmark.py script
CMD ["python3", "/benchmark.py"]

