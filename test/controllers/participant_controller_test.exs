defmodule Workshop.ParticipantControllerTest do
  use Workshop.ConnCase

  alias Workshop.Participant
  @valid_params participant: %{email: "some content", name: "some content", occupation: "some content", workshop: "some content"}
  @invalid_params participant: %{}

  setup do
    conn = conn()
    {:ok, conn: conn}
  end

  test "GET /participants", %{conn: conn} do
    conn = get conn, participant_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing participants"
  end

  test "GET /participants/new", %{conn: conn} do
    conn = get conn, participant_path(conn, :new)
    assert html_response(conn, 200) =~ "New participant"
  end

  test "POST /participants with valid data", %{conn: conn} do
    conn = post conn, participant_path(conn, :create), @valid_params
    assert redirected_to(conn) == participant_path(conn, :index)
  end

  test "POST /participants with invalid data", %{conn: conn} do
    conn = post conn, participant_path(conn, :create), @invalid_params
    assert html_response(conn, 200) =~ "New participant"
  end

  test "GET /participants/:id", %{conn: conn} do
    participant = Repo.insert %Participant{}
    conn = get conn, participant_path(conn, :show, participant)
    assert html_response(conn, 200) =~ "Show participant"
  end

  test "GET /participants/:id/edit", %{conn: conn} do
    participant = Repo.insert %Participant{}
    conn = get conn, participant_path(conn, :edit, participant)
    assert html_response(conn, 200) =~ "Edit participant"
  end

  test "PUT /participants/:id with valid data", %{conn: conn} do
    participant = Repo.insert %Participant{}
    conn = put conn, participant_path(conn, :update, participant), @valid_params
    assert redirected_to(conn) == participant_path(conn, :index)
  end

  test "PUT /participants/:id with invalid data", %{conn: conn} do
    participant = Repo.insert %Participant{}
    conn = put conn, participant_path(conn, :update, participant), @invalid_params
    assert html_response(conn, 200) =~ "Edit participant"
  end

  test "DELETE /participants/:id", %{conn: conn} do
    participant = Repo.insert %Participant{}
    conn = delete conn, participant_path(conn, :delete, participant)
    assert redirected_to(conn) == participant_path(conn, :index)
    refute Repo.get(Participant, participant.id)
  end
end
