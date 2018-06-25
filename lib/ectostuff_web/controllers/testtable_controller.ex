defmodule EctostuffWeb.TesttableController do
    use EctostuffWeb, :controller

    import Ecto.Query, warn: false
    alias Ectostuff.Repo

    alias Ectostuff.Identity
    alias Ectostuff.Identity.User
    alias EctoStuff.Identity.Adress


    def index(conn, _params) do
        users = Identity.list_users()
        adresses = Identity.list_adresses()
        render(conn, "index.html", users: users, adresses: adresses) 
    end

    def show(conn, %{"id" => id}) do
        user = Identity.get_user!(id)
        adress = Identity.get_adress!(id)
        render(conn, "show.html", user: user, adress: adress)
    end
end


