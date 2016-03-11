ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Classwar.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Classwar.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Classwar.Repo)

