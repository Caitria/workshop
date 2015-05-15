# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

defmodule ConfigHelper do

  @fallbacks %{username: "postgres",
               password: "postgres",
               host:     "localhost",
               database: "workshop"}

  def get_postgres_url(options) do
    case System.get_env("DATABASE_URL") do
      none when none == nil or none == "" ->
        if Dict.get(options, :fallback, true) do
          username = get(options, :username, "PGUSER")
          password = get(options, :password, "PGPASSWORD")
          host     = get(options, :host,     "PGHOST")
          database = get(options, :database, "PGDATABASE")
          "postgres://#{username}:#{password}@#{host}/#{database}"
        else
          raise ArgumentError, message: "missing env var `DATABASE_URL`"
        end
      url ->
        url
    end
  end

  def get_ecto_url(options \\ []) do
    get_postgres_url(options)
      |> String.replace(~r"^postgres://", "ecto://")
  end

  defp get(options, key, system) do
    Keyword.get(options, key, System.get_env(system) || @fallbacks[key])
  end

end

# Configures the endpoint
config :workshop, Workshop.Endpoint,
  url: [host: "localhost"],
  root: Path.expand("..", __DIR__),
  secret_key_base: "GJaWYyBn2YJsagxjzAiuhm1ChxLQq7UMkByVhxVtUbi9/v2BL0Y/CsezDlh6CoD2",
  debug_errors: false,
  pubsub: [name: Workshop.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
