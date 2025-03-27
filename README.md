# auth-service

## Overview

Manages user authentication, providing endpoints for user registration and login, with data stored in MongoDB.

## Prerequisites

<details><summary><b>Show Prerequisites</b></summary>

- Docker (for containerization)
- Node.js (for development)

</details>

## Commands

<details><summary><b>Show Commands</b></summary>

### Setup

- Create the Docker network:
  ```sh
  docker network create my-network
  ```

### Build

- Build the Docker image:

  ```sh
  docker build -t auth-service .
  ```

### Run

- Run the container:

  ```sh
  docker run -d -p 3002:3002 --network my-network --env-file .env auth-service
  ```

### Debugging

- Check logs:

  ```sh
  docker logs <container-id>
  ```

### Environment Variables

- Create a .env file with:

  ```diff
  MONGO_URI=mongodb://admin:admin@backend-db:27017/sketch-app
  PORT=3002
  JWT_SECRET=your-secret-key
  ```

</details>
