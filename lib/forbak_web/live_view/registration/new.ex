defmodule ForbakWeb.LiveView.Registration.New do
  use Phoenix.LiveView
  alias ForbakWeb.Router.Helpers, as: Routes
  alias ForbakWeb.RegistrationView
  alias ForbakWeb.LiveView.Registration

  def render(assigns) do
    RegistrationView.render("new.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, socket }
  end

  def handle_event("register", _params, socket) do
      {:noreply,
         socket
         |> put_flash(:info, "User Registered")
        #  |> live_redirect(to: "/registrations/show")}
         |> live_redirect(to: Routes.live_path(socket, Registration.Show))}
  end


end
