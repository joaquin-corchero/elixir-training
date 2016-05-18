defmodule TimeServicePlug.RouterTest do
  use ExUnit.Case
  use Plug.Test
  alias TimeServicePlug.Router
  alias TimeServicePlug.CurrentDateTime

    test "GET /datetemie respons 200" do
      connection = conn(:get, "/datetime")
      response = Router.call(connection, [])

      assert response.status == 200
      assert response.state == :sent
    end

    test "GET /datetime responds with the local date time" do
      connection = conn(:get, "/datetime")
      {:ok, current_date_time} = CurrentDateTime.local |> Poison.encode
      response = Router.call(connection, [])

      assert response.resp_body == current_date_time
    end
end
