FROM node:18-slim

# Use the official Node.js image as base
RUN apt-get update && \
    apt-get install -y procps && \
    rm -rf /var/lib/apt/lists/*
# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm i -g @nestjs/cli

# Copy the rest of the application code
COPY . .

# Expose the port that the Nest.js application will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run","start:dev"]
