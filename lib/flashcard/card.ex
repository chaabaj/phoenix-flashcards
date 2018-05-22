defmodule Flashcard.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field(:english, :string)
    field(:kana, :string)
    field(:kanji, :string)

    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:english, :kanji, :kana])
    |> validate_required([:english, :kanji, :kana])
  end
end
