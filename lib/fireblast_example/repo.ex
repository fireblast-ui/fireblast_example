defmodule FireblastExample.Repo do
  use Ecto.Repo,
    otp_app: :fireblast_example,
    adapter: Ecto.Adapters.Postgres
end
