defmodule FriendsApp do
  def hello do
    :world
  end

  def meu_ambiente do
    case Mix.env() do
      :prod -> "Ambiente de Producao"
      :dev -> "Ambiente de Desenvolvimento"
      :test -> "Ambiente de teste"
    end
  end
end
