require IEx

defmodule GithubApi.GithubController do
  use GithubApi.Web, :controller
  alias GithubApi.Github.Client
  alias GithubApi.Github.Transform
  alias GithubApi.Github.Users.Repository

  def user(conn, %{"user" => user}) do
    IEx.pry
    result = Client.get_user(user)
            |> Transform.extract_user
            #|> Repository.save

    json conn, result
  end
end
