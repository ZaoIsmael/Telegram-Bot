import Config

config :app, 
  token: System.get_env("TOKEN_TG") || "${TOKEN_TG}",
  name: System.get_env("NAME_BOT") || "${NAME_BOT}"