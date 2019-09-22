defmodule ForBakWeb.LiveView.Registration.Show do
  use Phoenix.LiveView
  alias ForbakWeb.RegistrationView

  def render(assigns) do
    RegistrationView.render("show.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, socket}
  end

  def handle_params(params, uri, socket) do
    IO.puts "------------------------- new handle_params"
    IO.inspect params, label: "params"
    IO.inspect uri, label: "uri"
    IO.inspect socket, label: "socket"

    {:noreply, socket}
  end
end
