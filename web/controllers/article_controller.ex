defmodule KaeruPhoenix.ArticleController do
  use KaeruPhoenix.Web, :controller
  alias KaeruPhoenix.Repo
  alias KaeruPhoenix.Article

  def show(conn, %{"id" => id}) do
    article = Repo.get!(Article, id) |> Repo.preload(:content)
    render(conn, "show.html", article: article)
  end
end
