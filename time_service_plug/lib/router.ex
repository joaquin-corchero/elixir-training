defmodule TimeServicePlug.Router do
  use Plug.Router
  alias TimeServicePlug.CurrentDateTime
  plug :match
  plug :dispatch

  get "/datetime" do
    {:ok, current_date_time } = CurrentDateTime.local |> Poison.encode
    send_resp(conn, 200, current_date_time)
  end

  match _ do
    send_resp(conn, 404, "oops")
  end

end
