# Node image
FROM node:18

# Working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project source
COPY . .

# Build React project
RUN npm run build

# Install serve globally
RUN npm install -g serve

# Expose port
EXPOSE 3000

# Start production server
CMD ["serve", "-s", "build"]