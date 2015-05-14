defmodule Workshop.Router do
  use Workshop.Web, :router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Workshop do
    pipe_through :browser

    get "/", PageController, :index

    get "/success", PageController, :success
  end

  scope "/api", Workshop do
    # This isn't really an API.
    pipe_through :api

    post "/reserve", PageController, :reserve
  end

end
