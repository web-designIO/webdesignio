# webdesignio

[ ![Codeship Status for  domachine/webdesignio](https://codeship.com/projects/b8e80bb0-98dd-0132-fd19-668aa6fdbfb3/status?branch=feature/s3-assets)](https://codeship.com/projects/63478)

The documentation resides under /docs.  Refer to them as a developer.

## Getting Started

1. Get the web-design.io platform.

        git clone https://github.com/web-designIO/webdesignio.git

2. Add a file for secrets. Used secrets are:

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

3. Install dependencies.

        node.js, npm, bower, docker, docker-compose

4. Run dependency installation.

        ./scripts/setup && bower install

5. Start the platform:

        docker-compose up

6. Using a browser, go to http://localhost:3000 and you'll see: web-design.io.

## Add fist user

1. Open a connection to MongoDB:

        localhost:27018

2. Create a DB 'local'. Create a collection 'users'. Create document:

        "email" : "some@email.com",
        "isAdmin" : true
        
3. Using a browser, go to http://localhost:3000/register and use the same email.

4. Go to http://localhost:3000/auth . Login.

## Install a website

### Add a website

        git submodule add website-name.git websites/website-name

### Required parts for a website

1. A website exports an express-app. So you can do everything you can do with express.

2. require inlace

3. Helper methods on the cms-module.
