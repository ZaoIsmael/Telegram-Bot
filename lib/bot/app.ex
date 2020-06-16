defmodule App.Application do
  use Application

  def start(_type, _args) do
    token = Application.get_env(:app, :token)

    children = [
      ExGram,
      {App.Bot, [method: :polling, token: token]}
    ]

    opts = [strategy: :one_for_one, name: App.Supervisor]
    Supervisor.start_link(children, opts)
  end
end