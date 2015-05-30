# Workshop Signup Page

## Dependencies

- [Elixir](http://elixir-lang.org)
- [Node.js](http://nodejs.org)

## Running

### Setup

```bash
$ mix deps.get
$ npm install
$ mix do ecto.create, ecto.migrate
```

### Development

```bash
$ mix phoenix.server
```

### Production

```bash
$ mix phoenix.digest
$ MIX_ENV=prod mix phoenix.server
```

## Deploying to Heroku

```bash
$ heroku create [APP]
$ heroku buildpacks:add https://github.com/HashNuke/heroku-buildpack-elixir
$ heroku buildpacks:add https://github.com/heroku/heroku-buildpack-nodejs
$ heroku addons:create heroku-postgresql
$ heroku config:set MIX_ENV=prod
$ git push heroku [BRANCH:]master
```
