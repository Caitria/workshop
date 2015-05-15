use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :workshop, Workshop.Endpoint,
  http: [port: 4001],
  server: false

config :workshop, Workshop.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: ConfigHelper.get_postgres_uri(database: "workshop-test")

# Print only warnings and errors during test
config :logger, level: :warn
