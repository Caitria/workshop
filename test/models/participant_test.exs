defmodule Workshop.ParticipantTest do
  use Workshop.ModelCase

  alias Workshop.Participant

  @valid_attrs %{email: "some content", name: "some content", occupation: "some content", workshop: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Participant.changeset(%Participant{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Participant.changeset(%Participant{}, @invalid_attrs)
    refute changeset.valid?
  end
end
