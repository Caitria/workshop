defmodule Workshop.Repo.Migrations.CreateParticipant do
  use Ecto.Migration

  def change do
    create table(:participants) do
      add :name, :string
      add :email, :string
      add :occupation, :string
      add :workshop, :string

      timestamps
    end
  end
end
