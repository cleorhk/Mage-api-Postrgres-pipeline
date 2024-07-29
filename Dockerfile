# Use the official Mage AI image
FROM mageai/mageai:latest

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port that the service will run on
EXPOSE 6789

# Command to run the Mage AI server
CMD ["mage", "start", "--host", "0.0.0.0"]
