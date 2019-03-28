# How to Deploy an application on Heroku - githubpages

### What is required in order to deploy on Heroku and things to consider?

* Heroku account & Heroku CLI
  * `$ brew tap heroku/brew && brew install heroku`
* Github repo of your application
  * `git push heroku master`
  * `heroku run ...`
* how do we hide environment variables? secret keys, api keys, and private information
  * specifying environment
    * dotenv gem - suggested use for development .env file, .gitignore
    * What about production?
* common issues - wrong version of ruby/rails, upgrade to ruby version 2.5+, Rails version 5+
* how to serve up a static page?
  * rack server to display out index.html file
* fast-json api
* namespace routes


### Heroku CLI Tool
- Install Tool `brew tap heroku/brew && brew install heroku`
- Login to Heroku from CLI `heroku login`

### Using Heroku
- Get the git url and add it as a remote to your project
- Push your code to the heroku repo
- Run any rake tasks (migrate, seed)

#### Configuration
Remember, when deploying an app, consider changes that need to be made for these things:

- Environment variables (API Keys, JWT secrets)
- URLs
- CORS

#### Bonus for mod 4+ projects when building with React
When deploying a React app built using `create-react-app` you must specify a buildpack to use `process.env` properly.
	- Go to Settings on the dashboard and go down to buildpacks. Click "Add a buildpack" and enter the following URL: https://github.com/mars/create-react-app-buildpack
	- This buildpack will only apply on a redeploy, so to see the changes, you must redeploy your application

#### Other useful bits
- Access to error logging via the heroku dashboard (More -> View logs)
- Access to environment variables on the settings page
- Use `heroku config` from your terminal to see config vars for a particular repo
  - this is very helpful to see if you able to access environment variables
- User `heroku run <TERMINAL COMMAND>` to run terminal commands on the Heroku server
  - ie. `heroku run rails console`


### Common Problems

- Ruby version must be 2.5 and greater
	- Use RVM to install other versions of Ruby and change versions
	- Gems are installed for a specific version of Ruby, so if you change versions, you must reinstall gems
	- Installing bundler problems: https://stackoverflow.com/questions/54087856/cant-find-gem-bundler-0-a-with-executable-bundle-gemgemnotfoundexceptio
#### Bonus for mod 4+ projects when building with React common problems
- Frontend fetch URLs are all "localhost" but should be switched to your deployed backend's URL
	- Use the adapter pattern so your fetches are all in one place
	- Use the environment (`process.env.NODE_ENV`) to determine which URL to use


how to install the heroku CLI  - https://devcenter.heroku.com/articles/git#prerequisites-install-git-and-the-heroku-cli
how to deploy with heroku cli and git - https://devcenter.heroku.com/articles/git

how to install with github pages - https://pages.github.com/
faker gem - https://github.com/stympy/faker
dotenv gem - https://github.com/bkeepers/dotenv
fast json gem - serializer https://github.com/Netflix/fast_jsonapi
