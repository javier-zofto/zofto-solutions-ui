# Use the official Node.js image as the base
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and yarn.lock/npm-shrinkwrap.json
COPY package*.json ./

# Install dependencies
#RUN npm install -g expo
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port Expo CLI uses
EXPOSE 80

# Start Expo
#RUN npm run start
#RUN npm run web
CMD ["npm", "run", "start"]
#CMD ["expo", "start", "--tunnel"]