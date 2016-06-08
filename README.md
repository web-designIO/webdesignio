# webdesignio

[ ![Codeship Status for  domachine/webdesignio](https://codeship.com/projects/b8e80bb0-98dd-0132-fd19-668aa6fdbfb3/status?branch=feature/s3-assets)](https://codeship.com/projects/63478)

****
We are currently working on the next version here: [webdesignio V2](https://github.com/webdesignio)
****

The documentation resides under /docs.  Refer to them as a developer.

## Getting Started

1. Get the web-design.io platform.

        git clone https://github.com/web-designIO/webdesignio.git

2. Add a file for secrets. Used secrets are:

        # ./secrets
        
        export COOKIE_SECRET=""
        export AWS_ACCESS_KEY_ID=""
        export AWS_SECRET_ACCESS_KEY=""
        export AWS_S3_BUCKET=""
        export AWS_S3_REGION=""
        export MAILGUN_DOMAIN=""
        export MAILGUN_API_KEY=""
        export MAILCHIMP_API_KEY=""
        export MAILCHIMP_LIST_ID=""

3. Install dependencies.

        node, npm, bower, mongod, redis-server

4. Run dependency installation.

        npm install && bower install

5. Start the platform:

        npm start

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

### Use the website

1. Go to http://localhost:3000/admin/websites/new. Use

        Website: website-name (the name of the submodule)
        Domains: a free local domain e.g. sub1.localhost

2. Save and visit the domain that you have just entered.

### Required parts for a website

1. A website exports an express-app. So you can do everything you can do with express.
