# Use official Node image to build the app
FROM node:18

# Set working directory
WORKDIR /app

# Copy app files
COPY . .

# Install dependencies
RUN npm install

# Build the React app
RUN npm run build

# Use a simple web server to serve the build folder
RUN npm install -g serve

# Start the app with 'serve'
CMD ["serve", "-s", "build"]

# Expose port
EXPOSE 3000
