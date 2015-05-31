defmodule Workshop.SignupController do
  use Workshop.Web, :controller

  plug :action

  def index(conn, params) do
    IO.inspect Dict.get(params, "lang", "en")
    conn
    |> render("index.html", lang: Dict.get(params, "lang", "en"))
  end

  def signup(conn, _params) do
    # TODO forward to an actual page
    conn
    |> redirect(to: "/success")
  end

  def success(conn, _params) do
    conn
    |> put_flash(:info, "You've successfully signed up!")
    |> render("index.html")
  end

end
