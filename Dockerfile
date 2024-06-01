# Use the latest alpine image as the base
FROM python:3.11.9-alpine3.20


# Install Python
# RUN apk add --no-cache python3=3.11.2-r0 py3-pip

# Copy benchmark.py to the container
COPY benchmark.py /benchmark.py

# Set the working directory
WORKDIR /

# Run the benchmark.py script
CMD ["python3", "/benchmark.py"]

