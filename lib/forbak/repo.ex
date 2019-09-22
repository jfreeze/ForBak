defmodule Forbak.Repo do
  use Ecto.Repo,
    otp_app: :forbak,
    adapter: Ecto.Adapters.Postgres
end
