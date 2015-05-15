use Mix.Config

config :workshop, Workshop.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: {:system, "URL"}],
  cache_static_manifest: "priv/static/manifest.json"

# Do not print debug messages in production
config :logger, level: :info

config :workshop, Workshop.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: ConfigHelper.get_postgres_uri(fallback: false)
