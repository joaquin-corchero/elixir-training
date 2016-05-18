defmodule TimeServicePlug.RouterTest do
  use ExUnit.Case
  use Plug.Test
  alias TimeServicePlug.Router

    test "GET/ datetemie respons 200" do
      connection = conn(:get, "/datetime")

      response = Router.call(connection, [])

      assert response.status == 200
      assert response.state == :sent
    end
end
