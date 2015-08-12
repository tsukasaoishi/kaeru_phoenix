defmodule KaeruPhoenix.PageController do
  use KaeruPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
