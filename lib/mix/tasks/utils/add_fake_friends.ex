defmodule Mix.Tasks.Utils.AddFakeFriends do
  use Mix.Task
  alias NimbleCSV.RFC4180, as: CSVParser

  @number_of_friends 50

  @shortdoc "Adds fake friends on app"
  def run(_) do
    Faker.start()

    create_friends([], @number_of_friends)
    |> CSVParser.dump_to_iodata()
    |> save_csv_file()
    |> IO.puts("Amigos cadastrados com sucesso!")
  end

  defp create_friends(list, count) when count <= 1 do
    list ++ [random_list_friend()]
  end

  defp create_friends(list, count) do
    list ++ [random_list_friend()] ++ create_friends(list, count - 1)
  end

  defp random_list_friend do
    [Faker.Person.PtBr.name(), Faker.Internet.email(), Faker.Phone.PtBr.phone()]
  end

  defp save_csv_file(data) do
    File.write!("#{File.cwd!}/friends.csv", data, [:append])
  end
end
