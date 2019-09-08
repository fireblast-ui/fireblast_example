# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fireblast_example,
  ecto_repos: [FireblastExample.Repo]

# Configures the endpoint
config :fireblast_example, FireblastExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "C7IogNPkQgB7F8fhNzxwOZLLkBglYiHYgKUD0Yv0TVfDX+CDgZ+N9/FcysUfJu4f",
  render_errors: [view: FireblastExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FireblastExample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
