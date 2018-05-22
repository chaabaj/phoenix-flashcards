defmodule FlashcardWeb.Router do
  use FlashcardWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", FlashcardWeb do
    # Use the default browser stack
    pipe_through(:api)

    get("/", PageController, :index)
  end

  # Other scopes may use custom stacks.
  # scope "/api", FlashcardWeb do
  #   pipe_through :api
  # end
end
