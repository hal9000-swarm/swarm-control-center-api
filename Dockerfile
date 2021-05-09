# Setup
FROM node:16-alpine

WORKDIR /app

# Install mock server
RUN apk --no-cache add git
RUN npm install -g @stoplight/prism-cli

# Copy OpenAPI docs
COPY . /app

# Start mock service
# --dynamic: Generates random data based on the examples/x-faker entries inside the yaml file
# --host: Necessary to address localhost inside the docker container
# --cors: Attach CORS header
ENTRYPOINT ["prism", "mock", "--dynamic", "--host", "0.0.0.0", "--port", "80", "--cors", "/app/services/api-gateway.yaml"]