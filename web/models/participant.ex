defmodule Workshop.Participant do
  use Workshop.Web, :model

  schema "participants" do
    field :name, :string
    field :email, :string
    field :occupation, :string
    field :workshop, :string

    timestamps
  end

  @required_fields ~w(name email occupation workshop)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:name, min: 2)
    |> validate_length(:occupation, min: 2)
    |> validate_format(:email, ~r/@/)
  end
end
