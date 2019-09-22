defmodule ForBakWeb.LiveView.Registration.New do
  use Phoenix.LiveView
#  alias ForBakWeb.Router.Helpers, as: Routes
#  alias ForBak.Router.Helpers, as: Routes
  alias ForbakWeb.RegistrationView

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
         |> live_redirect(to: "/registrations/show")}
        #  |> live_redirect(to: Routes.live_path(socket, Registration.Show))}
  end


end
