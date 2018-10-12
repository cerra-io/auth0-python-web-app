# Auth0 Python Web App Sample

The original sample was modified/extended by Zsolt so that it demonstrates how to obtain a usable
access token from auth0 and then how to use that access token to obtain a project token for the
user.

Assumptions:

- You will use your own auth0 credentials to log in
- You started acctmgr locally
- You followed the TESTING.md tutorial in hq-acctmgr and created a project, called 'first'. If you have a project
  with a different name, you can use that, but you need to change one line in server.py.
- The acctmgr REST API is reachable at localhost:3000. If you have a different access point, change the respective
  paramater(s) in .env
- After you copied .env.example to .env, opened the file, and copied the actual client secret for the client id
  shown there.

/Zsolt

Original text:

# Running the App

To run the sample, make sure you have `python` and `pip` installed.

Rename `.env.example` to `.env` and populate it with the client ID, domain, secret, callback URL and audience for your
Auth0 app. If you are not implementing any API you can use `https://YOUR_DOMAIN.auth0.com/userinfo` as the audience. 
Also, add the callback URL to the settings section of your Auth0 client.

Register `http://localhost:3001/callback` as `Allowed Callback URLs` and `http://localhost:3001` 
as `Allowed Logout URLs` in your client settings.

Run `pip install -r requirements.txt` to install the dependencies and run `python server.py`. 
The app will be served at [http://localhost:3001/](http://localhost:3001/).

# Running the App with Docker

To run the sample, make sure you have `docker` installed.

To run the sample with [Docker](https://www.docker.com/), make sure you have `docker` installed.

Rename the .env.example file to .env, change the environment variables, and register the URLs as explained [previously](#running-the-app).

Run `sh exec.sh` to build and run the docker image in Linux or run `.\exec.ps1` to build 
and run the docker image on Windows.

## What is Auth0?

Auth0 helps you to:

* Add authentication with [multiple authentication sources](https://auth0.com/docs/identityproviders),
either social like **Google, Facebook, Microsoft Account, LinkedIn, GitHub, Twitter, Box, Salesforce, among others**,or 
enterprise identity systems like **Windows Azure AD, Google Apps, Active Directory, ADFS or any SAML Identity Provider**.
* Add authentication through more traditional **[username/password databases](https://docs.auth0.com/mysql-connection-tutorial)**.
* Add support for **[linking different user accounts](https://auth0.com/docs/link-accounts)** with the same user.
* Support for generating signed [JSON Web Tokens](https://auth0.com/docs/jwt) to call your APIs and
**flow the user identity** securely.
* Analytics of how, when and where users are logging in.
* Pull data from other sources and add it to the user profile, through [JavaScript rules](https://auth0.com/docs/rules).

## Create a free account in Auth0

1. Go to [Auth0](https://auth0.com) and click Sign Up.
2. Use Google, GitHub or Microsoft Account to login.

## Issue Reporting

If you have found a bug or if you have a feature request, please report them at this repository issues section.
Please do not report security vulnerabilities on the public GitHub issue tracker. 
The [Responsible Disclosure Program](https://auth0.com/whitehat) details the procedure for disclosing security issues.

## Author

[Auth0](https://auth0.com)

## License

This project is licensed under the MIT license. See the [LICENSE](LICENCE) file for more info.
