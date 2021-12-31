defmodule FriendsApp.CLI.Menu.Items do
  alias FriendsApp.CLI.Menu

  @spec all :: [
          %FriendsApp.CLI.Menu{
            id: :create | :delete | :read | :update,
            label: <<_::128, _::_*16>>
          },
          ...
        ]
  def all, do: [
    %Menu{ label: "Cadastrar um amigo", id: :create},
    %Menu{ label: "Listar os amigos", id: :read},
    %Menu{ label: "Atualizar um amigo", id: :update},
    %Menu{ label: "Excluir um amigo", id: :delete}
  ]
end
