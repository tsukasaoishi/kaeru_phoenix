defmodule KaeruPhoenix.ArticleTest do
  use KaeruPhoenix.ModelCase

  alias KaeruPhoenix.Article

  @valid_attrs %{access_count: 42, publish_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Article.changeset(%Article{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Article.changeset(%Article{}, @invalid_attrs)
    refute changeset.valid?
  end
end
