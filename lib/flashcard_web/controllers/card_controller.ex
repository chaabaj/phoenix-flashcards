alias Flashcard.{Card, Repo}

defmodule FlashcardWeb.PageController do
  use FlashcardWeb, :controller
  @attribute ~w(id english kanji kana)a

  def index(conn, _params) do
    cards =
      Repo.all(Card)
      |> Enum.map(&Map.from_struct/1)
      |> Enum.map(&Map.take(&1, @attribute))

    conn
    |> put_status(200)
    |> json(cards)
  end
end
