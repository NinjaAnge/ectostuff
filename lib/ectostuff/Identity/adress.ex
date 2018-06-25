defmodule Ectostuff.Identity.Adress do
    use Ecto.Schema
    import Ecto.Changeset

    schema "adresses" do
        field :adress, :string
        field :city, :string
        
        belongs_to :user, Ectostuff.Identity.User

        timestamps()
    end

    def changeset(adress, attrs \\ %{}) do
        adress
        |> Ectostuff.Repo.preload(:user)
        |> cast(attrs, [:adress, :city, :user_id])
        |> validate_required([:adress, :city])
        |> foreign_key_constraint(:user_id)
    end
    
end