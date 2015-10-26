# webdesignio

[ ![Codeship Status for  domachine/webdesignio](https://codeship.com/projects/b8e80bb0-98dd-0132-fd19-668aa6fdbfb3/status?branch=feature/s3-assets)](https://codeship.com/projects/63478)

The documentation resides under /docs.  Refer to them as a developer.

# Getting started #

1. Get the web-design.io platform.

```
#!shell

git clone git@bitbucket.org:domachine/webdesignio.git
```

2. Install all software needed.

```
#!shell
node.js, npm, docker, docker-compose

```

3. Run dependency installation.

```
#!shell

npm install && bower install
```

4. Start the platform:

```
#!shell

docker-compose up
```

5. Using a browser, go to http://localhost:3000 and you'll see: web-design.io.




# Install a website #

....
1. Git submodule init and git submodule update

# Create a new website #
1. Create Bitbucket repository
2. git submodule add $$$$:x-oauth-basic@bitbucket.org/webdesignio/website-NAME.git PATH

# Required parts for a website #

1. A website exports an express-app. So you can do everything you can do with express.

2. require inlace

3. Helper methods on the cms-module.
