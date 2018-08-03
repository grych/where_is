defmodule WhereIs.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: WhereIs.Worker.start_link(arg)
      # {WhereIs.Worker, arg},
      Plug.Adapters.Cowboy.child_spec(
        scheme: :http,
        plug: WhereIs.Router,
        options: [port: Application.get_env(:where_is, :port, 8765)]
      )
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WhereIs.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
