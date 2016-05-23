require IEx

defmodule GithubApi.GithubController do
  use GithubApi.Web, :controller
  alias GithubApi.Github.Client
  alias GithubApi.Github.Users.Transform, as: UsersTransform
  alias GithubApi.Github.Users.Repository
  alias GithubApi.Github.CodeRepos.Transform, as: CodeRepoTransform

  def user(conn, %{"user" => user}) do
    #IEx.pry
    result = Client.get_user(user)
            |> UsersTransform.extract_user
            #|> Repository.save

    json conn, result
  end

  def repos(conn, %{"user" => user}) do
    #IEx.pry
    result = Client.get_repos(user)
            |> CodeRepoTransform.extract_repos
            #|> Repository.save

    json conn, result
  end


  def repos_languages(conn, %{"user" => user}) do
      #IEx.pry
      repos = Client.get_repos(user)
              |> CodeRepoTransform.extract_repos

      json conn, repos
  end

end
