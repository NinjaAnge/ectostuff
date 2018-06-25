# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ectostuff,
  ecto_repos: [Ectostuff.Repo]

# Configures the endpoint
config :ectostuff, EctostuffWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hLoLGkFmm4R9RcEF6BwPs2mJ0meDStzXMT+Iskj/gX5DxCVe78GzuZ3AfC245KqQ",
  render_errors: [view: EctostuffWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ectostuff.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
