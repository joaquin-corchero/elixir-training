defmodule GithubApi.GithubControllerTest do
  use GithubApi.ConnCase #Part of Plug

  #this way of testing makes the call
  test "Get /users/:user responds with 200", %{conn: conn} do
    conn = get(conn, "users/elixir-lang")

    assert conn.status == 200
  end

  test "Get /users/:user responds with 200 Different approach", %{conn: conn} do
    conn = conn(:get, "users/elixir-lang")

    response = GithubApi.Router.call(conn, [])

    assert response.status == 200
  end
end
