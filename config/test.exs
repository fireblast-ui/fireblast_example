use Mix.Config

# Configure your database
config :fireblast_example, FireblastExample.Repo,
  username: "postgres",
  password: "postgres",
  database: "fireblast_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :fireblast_example, FireblastExampleWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
