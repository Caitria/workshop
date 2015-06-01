defmodule Workshop.SignupController do
  use Workshop.Web, :controller

  alias Workshop.Participant
  alias Workshop.Repo

  plug :scrub_params, "participant" when action in [:signup]
  plug :action

  def index(conn, params) do
    changeset = Participant.changeset(%Participant{})
    conn
    |> render("index.html", lang: Dict.get(params, "lang", "en"), changeset: changeset)
  end

  def signup(conn, %{"participant" => %{"confirm" => confirm} = participant_params})
      when confirm != "true" do
    changeset = Participant.changeset(%Participant{}, participant_params)
    conn
    |> put_flash(:error, "You must acknowledge that instruction is in English.")
    |> render("index.html", changeset: changeset)
  end

  def signup(conn, %{"participant" => participant_params}) do
    changeset = Participant.changeset(%Participant{}, participant_params)

    if changeset.valid? do
      Repo.insert(changeset)
      conn
      |> put_flash(:info, "You've successfully signed up! We'll be in touch.")
      |> redirect(to: "/")
    else
      conn
      |> put_flash(:error, "We're having trouble with your signup info." <>
        " Please see the signup form for more information.")
      |> render("index.html", changeset: changeset)
    end
  end

end
