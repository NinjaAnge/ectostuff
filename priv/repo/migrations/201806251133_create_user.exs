defmodule Ectostuff.Repo.Migrations.CreateUser do
    use Ecto.Migration

    def change do
        create table(:users) do
          add :fname, :string
          add :lname, :string
          
          timestamps()
    end
 end
end