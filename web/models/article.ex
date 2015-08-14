defmodule KaeruPhoenix.Article do
  use KaeruPhoenix.Web, :model

  schema "articles" do
    field :title, :string
    field :publish_at, Ecto.DateTime
    field :access_count, :integer
    has_one :content, KaeruPhoenix.ArticleContent

    timestamps([{:inserted_at,:created_at}])
  end

  @required_fields ~w(title publish_at access_count)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
