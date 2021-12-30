defmodule FriendsApp.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_app do
    Shell.cmd("clear")
    welcome_message()
    Shell.prompt("Pressione ENTER para continuar...")
    menu_choice_starts()
  end

  defp welcome_message do
    Shell.info("========== Friends App ==========")
    Shell.info("Seja bem vindo a sua agenda pessoal!")
    Shell.info("=================================")
  end

  defp menu_choice_starts do
    FriendsApp.CLI.Menu.Choice.start()
  end
end
