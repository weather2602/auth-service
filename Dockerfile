# Use the official Node.js LTS image as the base
FROM node:lts

# Set the working directory inside the container
WORKDIR /app

# Copy package.json (and package-lock.json if it exists) to install dependencies
COPY package*.json ./

# Install the required dependencies
RUN npm install express jsonwebtoken bcryptjs mongoose

# Copy the rest of your application code
COPY . .

# Expose the port your auth service runs on (e.g., 3001)
EXPOSE 3001

# Command to start the application
CMD ["node", "index.js"]