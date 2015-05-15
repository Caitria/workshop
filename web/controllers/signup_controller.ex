defmodule Workshop.SignupController do
  use Workshop.Web, :controller

  plug :validate
  plug :action

  def validate(conn, _params) do
    conn
  end

  def index(conn, _params) do
    conn
    |> render("index.html")
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
