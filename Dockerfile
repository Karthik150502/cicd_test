#Use Node.js base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the TypeScript application
RUN npm run build

# Expose the application port (if needed for a server, optional here)
# EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]

