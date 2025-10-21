FROM node:20-alpine

# Set working directory
WORKDIR /reviewBot

# Copy package files
COPY package*.json ./

# Install dependencies
RUN yarn

# Copy Strapi project files
COPY . .

# Build Strapi (if you have a build script)
RUN yarn build

# Expose the port Strapi will run on
EXPOSE 13377

# Start Strapi
CMD ["yarn", "run", "start"]
