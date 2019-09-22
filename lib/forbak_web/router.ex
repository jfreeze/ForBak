defmodule ForbakWeb.Router do
  use ForbakWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :layout do
    plug :put_layout, {ForbakWeb.LayoutView, :app}
  end

  scope "/", ForbakWeb.LiveView do
    pipe_through [:browser, :layout]

    live "/registrations/new", Registration.New
    live "/registrations/show", Registration.Show
  end

  scope "/", ForbakWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ForbakWeb do
  #   pipe_through :api
  # end
end
