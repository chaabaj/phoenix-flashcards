defmodule Flashcard.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :english, :string
      add :kanji, :string
      add :kana, :string

      timestamps()
    end

  end
end
