# Real-World Example: Using Environment Variables in a Web Application Deployment

Environment variables are commonly used in deployment scripts and application configuration. Below is a real-world example of using a Bash script to deploy a Node.js web application, utilizing environment variables for configuration.

---

## Example Directory Structure

```
my-web-app/
├── .env
├── deploy.sh
└── app.js
```

---

## `.env` File (Configuration)

```env
APP_ENV=production
PORT=3000
DB_HOST=db.example.com
DB_USER=admin
DB_PASS=s3cr3t
```

> ⚠️ Never commit `.env` files to version control if they contain secrets!

---

## `deploy.sh` Script (Using Environment Variables)

```bash
#!/bin/bash

# Load environment variables from .env
export $(grep -v '^#' .env | xargs)

echo "Deploying application in $APP_ENV mode..."
echo "Connecting to database at $DB_HOST with user $DB_USER"

# Install dependencies
npm install

# Start the application
node app.js
```

---

## `app.js` (Accessing Environment Variables in Node.js)

```javascript
const http = require("http");

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200);
  res.end("App Environment: " + process.env.APP_ENV);
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
```

---

## How to Run

```bash
chmod +x deploy.sh
./deploy.sh
```

---

## Summary

This setup demonstrates how environment variables help manage sensitive and environment-specific configurations in a real-world deployment scenario.

- Configs are separated using `.env`
- Bash script loads variables dynamically
- Node.js reads variables securely

---
