# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :resumany_elm,
  ecto_repos: [ResumanyElm.Repo]

# Configures the endpoint
config :resumany_elm, ResumanyElm.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QcPKI+CVufnTX1wKUcLVsw6D6sjrphBUHd9bT+FO5v0JZ6YvisEg/hn6/3Z2ratV",
  render_errors: [view: ResumanyElm.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ResumanyElm.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
