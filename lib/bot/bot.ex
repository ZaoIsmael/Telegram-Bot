defmodule App.Bot do
  @bot Application.get_env(:app, :name, "LanePryceBot") |> String.to_atom

  use ExGram.Bot,
    name: @bot

  def bot(), do: @bot

  def handle({:command, "start", _msg}, context) do
    context 
      |> answer("Hola, estamos integrando una plataforma de pago")
  end
end