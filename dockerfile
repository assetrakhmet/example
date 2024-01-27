# Use Alpine Linux as the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (adjust as needed for your application)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
