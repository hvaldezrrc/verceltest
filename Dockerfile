# Use Node LTS image
FROM node:18

# Set working directory
WORKDIR /app/valdez_hanz_site

# Copy package.json first
COPY valdez_hanz_site/package*.json ./

# Install dependencies
RUN npm install

# Copy everything else
COPY valdez_hanz_site/ .

# Expose port
EXPOSE 7775

# Start the app
CMD ["npm", "start"]
