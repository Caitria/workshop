defmodule Workshop.ParticipantController do
  use Workshop.Web, :controller

  alias Workshop.Participant
  alias Workshop.Repo

  plug :scrub_params, "participant" when action in [:create, :update]
  plug :action

  def index(conn, _params) do
    participants = Repo.all(Participant)
    render(conn, "index.html", participants: participants)
  end

  def new(conn, _params) do
    changeset = Participant.changeset(%Participant{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"participant" => participant_params}) do
    changeset = Participant.changeset(%Participant{}, participant_params)

    if changeset.valid? do
      Repo.insert(changeset)

      conn
      |> put_flash(:info, "Participant created successfully.")
      |> redirect(to: participant_path(conn, :index))
    else
      render(conn, "new.html", changeset: changeset)
    end
  end

  def signup(conn, %{"participant" => participant_params}) do
    changeset = Participant.changeset(%Participant{}, participant_params)

    if changeset.valid? do
      Repo.insert(changeset)

      conn
      |> put_flash(:info, "Participant created successfully.")
      |> redirect(to: "/success")
    else
      render(conn, "/", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    participant = Repo.get(Participant, id)
    render(conn, "show.html", participant: participant)
  end

  def edit(conn, %{"id" => id}) do
    participant = Repo.get(Participant, id)
    changeset = Participant.changeset(participant)
    render(conn, "edit.html", participant: participant, changeset: changeset)
  end

  def update(conn, %{"id" => id, "participant" => participant_params}) do
    participant = Repo.get(Participant, id)
    changeset = Participant.changeset(participant, participant_params)

    if changeset.valid? do
      Repo.update(changeset)

      conn
      |> put_flash(:info, "Participant updated successfully.")
      |> redirect(to: participant_path(conn, :index))
    else
      render(conn, "edit.html", participant: participant, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    participant = Repo.get(Participant, id)
    Repo.delete(participant)

    conn
    |> put_flash(:info, "Participant deleted successfully.")
    |> redirect(to: participant_path(conn, :index))
  end
end
