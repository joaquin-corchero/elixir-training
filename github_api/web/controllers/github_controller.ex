require IEx

defmodule GithubApi.GithubController do
  use GithubApi.Web, :controller
  alias GithubApi.Github.Client
  alias GithubApi.Github.Users.Transform
  alias GithubApi.Github.Users.Repository
  alias GithubApi.Github.CodeRepos.Transform

  def user(conn, %{"user" => user}) do
    #IEx.pry
    result = Client.get_user(user)
            |> GithubApi.Github.Users.Transform.extract_user
            #|> Repository.save

    json conn, result
  end

  def repos(conn, %{"user" => user}) do
    #IEx.pry
    result = Client.get_repos(user)
            |> GithubApi.Github.CodeRepos.Transform.extract_repos
            #|> Repository.save

    json conn, result
  end

end
