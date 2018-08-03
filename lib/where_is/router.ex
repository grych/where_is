defmodule WhereIs.Router do
  use Plug.Router
  use Plug.Debugger
  require Logger

  plug(Plug.Logger, log: :debug)
  plug(:match)
  plug(:dispatch)

  get "/*path" do
    {status, response} = WhereIs.country(path)
    Logger.debug response
    send_resp(conn, status, response)
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
