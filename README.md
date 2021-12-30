# FriendsApp

**How to run the project:**
  - You can simply run `mix start` on the root project level.

**Mix:**
  - `mix new <project_name>` - creates a mix project
  - `mix` is a CLI which can provide tasks to create, compile and test Elixir projects.
  - `iex -S mix` starts IEx and runs the default task
  - type `mix help` in order to have the list of available tasks.

**Notes:**
  - `README.md` -> to describe the project
  - `.gitignore` -> git version control system, to ignore some files to be added on github;
  - `mix.exs` -> to describe and manage the project dependencies;
  - `test/` -> folder to locate all the tests;
  - `lib/` -> folder to locate all the files created to execute the project;
  - `config/` -> folder to locate the config files for the project;

**Dependencies:**
  - [HEX](https://hex.pm) -> package manager for Erlang's ecossystem.
  - [nimble_csv](hexdocs.pm/nimble_csv]) -> simple and fast CSV parsing lib for Elixir
  

**Useful commands:**

  - `mix help` -> list all tasks that mix can run;
  - `mix or mix run` -> compile the files and run the project;

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `friends_app` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:friends_app, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/friends_app](https://hexdocs.pm/friends_app).

