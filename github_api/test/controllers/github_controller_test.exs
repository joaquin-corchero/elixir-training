defmodule GithubApi.GithubControllerTest do
  use GithubApi.ConnCase #Part of Plug
  alias GithubApi.Github.Users.User

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

  test "Get /users/:user returns the user in json", %{conn: conn} do
    conn = conn(:get, "users/elixir-lang")
    {:ok, expected} = %User{login: "elixir-lang", public_repos: 15} |> Poison.encode
    response = GithubApi.Router.call(conn, [])

    assert response.resp_body == expected
  end

  test "Get /users/:user/repos responds with 200", %{conn: conn} do
    conn = conn(:get, "users/elixir-lang/repos")
    response = GithubApi.Router.call(conn, [])

    assert response.status == 200
  end

  test "Get /users/:user/repos returns the user in json", %{conn: conn} do
    conn = conn(:get, "users/elixir-lang/repos")
    {:ok, expected} = %User{login: "elixir-lang", public_repos: 15} |> Poison.encode
    #response = GithubApi.Router.call(conn, [])

    #assert response.resp_body == expected
  end
end
