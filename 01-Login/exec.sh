docker build -t auth0-python-web-01-login .
docker run --env-file .env -p 3001:3001 -it auth0-python-web-01-login
