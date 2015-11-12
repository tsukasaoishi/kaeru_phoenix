defmodule KaeruPhoenix.ArticleView do
  use KaeruPhoenix.Web, :view

  def strftime(date, format) do
    {:ok, date} = Ecto.DateTime.dump(date)
    Timex.Date.from(date)
    |> Timex.DateFormat.format!(format, :strftime)
  end
end
