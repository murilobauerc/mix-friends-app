defmodule Mix.Tasks.Utils.AddFakeFriends do
  use Mix.Task
  alias FriendsApp.CLI.Friend
  alias NimbleCSV.RFC4180, as: CSVParser

  @number_of_friends 15

  @shortdoc "Adds fake friends on app"
  def run(_) do
    Faker.start()

    create_friends([], @number_of_friends)
    |> CSVParser.dump_to_iodata()
    |> save_csv_file()

    IO.puts("Cadastro de amigos.")
  end

  defp create_friends(list, count) when count <= 1 do
    list ++ [random_list_friend()]
  end

  defp create_friends(list, count) do
    list ++ [random_list_friend()] ++ create_friends(list, count - 1)
  end

  defp random_list_friend do
    %Friend{
      name: Faker.Person.PtBr.name(),
      email: Faker.Internet.email(),
      phone: Faker.Phone.PtBr.phone()
    }
    |> Map.from_struct()
    |> Map.values()
  end

  defp save_csv_file(data) do
    File.write!("#{File.cwd!}/friends.csv", data, [:append])
  end
end
