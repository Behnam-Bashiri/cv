# Use a Node.js base image
FROM node:20

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./
RUN node -v
RUN npm install -g n   
RUN n latest


# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .
RUN npm run generate
# Build the Nuxt.js application
RUN npm run build

# Expose the port your Nuxt app will run on
EXPOSE 80

# Set the command to run your application
CMD ["npm", "start"]
