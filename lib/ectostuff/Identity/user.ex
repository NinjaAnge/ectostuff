defmodule Ectostuff.Identity.User do
    use Ecto.Schema
    import Ecto.Changeset

    schema "users" do
        field :fname, :string
        field :lname, :string
        
        has_many :adress, Ectostuff.Identity.Adress

        timestamps()
    end

    def changeset(user, attrs \\ %{}) do
        user
        |> Ectostuff.Repo.preload(:adress)
        |> cast(attrs, [:fname, :lname])
        |> cast_assoc(:adress)
        |> validate_required([:fname, :lname])
    end

end