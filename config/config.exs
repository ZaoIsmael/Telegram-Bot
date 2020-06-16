use Mix.config

config :app, token: System.get_env("TOKEN_TG") || "${TOKEN_TG}"