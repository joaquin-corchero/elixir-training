defmodule TimeServicePlug.Router do
  use Plug.Router
  plug :match
  plug :dispatch

  get "/datetime" do
    send_resp(conn, 200, "")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end

end
