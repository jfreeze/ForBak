# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :forbak,
  ecto_repos: [Forbak.Repo]

# Configures the endpoint
config :forbak, ForbakWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oa1Uqaa46K6UGARGJ2gRgbz6ox1PokqMqcgroBdmFAvAWPGdD72CZp2Tst+I/OXg",
  render_errors: [view: ForbakWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Forbak.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "JtltQt8z/GzGUEE5mphDKn719E6lOtZA"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
