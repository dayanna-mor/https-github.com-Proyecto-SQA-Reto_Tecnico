# Get the base image of Node version 16
FROM ubuntu:23.04
FROM node:16

# Get the latest version of Playwright
FROM mcr.microsoft.com/playwright:focal

 
# COPY the needed files to the app folder in Docker image
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y git
RUN apt-get -y install libnss3 libatk-bridge2.0-0 libdrm-dev libxkbcommon-dev libgbm-dev libasound-dev libatspi2.0-0 libxshmfence-dev
RUN git clone -b docker-test https://ps6dpblnlpbj6heabgln7ssqfumnadc5u7wc5g7n6ry3qj7rbrxq@dev.azure.com/tutenlabs/AIR/_git/saas-playwright-test

# Set the work directory for the application

WORKDIR /saas-playwright-test
# Get the needed libraries to run Playwright

# Install the dependencies in Node environment

RUN npm install
RUN npx playwright install chrome
