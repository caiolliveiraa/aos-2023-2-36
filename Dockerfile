FROM node:16

# Create app directory
WORKDIR /app

COPY . /app

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev
RUN npm install sequelize

ENV PORT 3000
EXPOSE 3000
CMD [ "npm", "start" ]