defmodule Mix.Tasks.Utils.AddFakeFriends do
  use Mix.Task

  @shortdoc "Adds fake friends on app"
  def run(_) do
     Faker.start()

  end
end
