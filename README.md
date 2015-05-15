# Workshop Signup Page

## Dependencies

- [Elixir](http://elixir-lang.org)
- [Node.js](http://nodejs.org)

## Running

```bash
$ mix deps.get
$ npm install
$ mix phoenix.server
```

## Deploying to Heroku

```bash
$ heroku create [APP] --buildpack https://github.com/HashNuke/heroku-buildpack-elixir
$ heroku buildpacks:set https://github.com/heroku/heroku-buildpack-nodejs
$ heroku addons:create heroku-postgresql
$ heroku config:set MIX_ENV=prod
$ git push heroku [BRANCH:]master
$ heroku run mix phoenix.digest
```
