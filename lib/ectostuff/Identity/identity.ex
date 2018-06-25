defmodule Ectostuff.Identity do
    import Ecto.Query, warn: false
    alias Ectostuff.Repo

    alias Ectostuff.Identity.Adress
    alias Ectostuff.Identity.User

    def list_users do
        Repo.all(User)
        |> Ectostuff.Repo.preload(:adress)
    end

    def get_user!(id), do: Repo.get!(User,id) |> Ectostuff.Repo.preload(:adress)

    def create_user(attrs \\ %{}) do
        %User{}
        |> User.changeset(attrs)
        |> Repo.insert()
    end

    def list_adresses do
        Repo.all(Adress)
        |> Ectostuff.Repo.preload(:user)
    end
    def create_adress(attrs \\ %{}) do
        %Adress{}
        |> Adress.changeset(attrs)
        |> Repo.insert()
        
    end
    def get_adress!(id), do: Repo.get!(Adress,id) |> Ectostuff.Repo.preload(:user)
end