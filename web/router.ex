defmodule Workshop.Router do
  use Workshop.Web, :router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug Workshop.LocalePlug, "en"
  end

  scope "/", Workshop do
    pipe_through :browser

    get "/", SignupController, :index
    post "/signup", SignupController, :signup
  end

  scope "/admin", Workshop do
    resources "/participants", ParticipantController, only: [:index]
  end

end
