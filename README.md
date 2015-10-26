# webdesignio

[ ![Codeship Status for  domachine/webdesignio](https://codeship.com/projects/b8e80bb0-98dd-0132-fd19-668aa6fdbfb3/status?branch=feature/s3-assets)](https://codeship.com/projects/63478)

The documentation resides under /docs.  Refer to them as a developer.

# Getting started #

1. Get the web-design.io platform.

```
#!shell

git clone https://github.com/web-designIO/webdesignio.git
```

2. Add a file for secrets. Used secrets are:

```
# ./secrets

COOKIE_SECRET=""
AWS_ACCESS_KEY_ID=''
AWS_SECRET_ACCESS_KEY=''
AWS_S3_BUCKET=''
AWS_S3_REGION=''
MAILGUN_DOMAIN=''
MAILGUN_API_KEY=''
MAILCHIMP_API_KEY=''
MAILCHIMP_LIST_ID=''
```

3. Install all software needed.

```
#!shell
node.js, npm, docker, docker-compose

```

4. Run dependency installation.

```
#!shell

./scripts/setup && bower install
```

5. Start the platform:

```
#!shell

docker-compose up
```

5. Using a browser, go to http://localhost:3000 and you'll see: web-design.io.


# Install a website #

# Add a website #
```
#!shell

git submodule add website-name.git websites/website-name
```

# Required parts for a website #

1. A website exports an express-app. So you can do everything you can do with express.

2. require inlace

3. Helper methods on the cms-module.
