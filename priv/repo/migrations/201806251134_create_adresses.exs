defmodule Ectostuff.Repo.Migrations.CreateAdresses do
    use Ecto.Migration

    def change do
        create table(:adresses) do
            add :adress, :string
            add :city, :string
            add :user_id, references(:users, on_delete: :delete_all)

            timestamps()
        end

        create index(:adresses, [:user_id])
    end
end