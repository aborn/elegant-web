use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :elegantweb, Elegantweb.Endpoint,
  secret_key_base: "KtQnJ+UA73lgZR8FQ+5L0RHZ5rnh4Qam6SLHSqbQ6QQPx3RX01pR0Xf5AD0QQpBG"

# Configure your database
config :elegantweb, Elegantweb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elegantweb_prod",
  pool_size: 20
