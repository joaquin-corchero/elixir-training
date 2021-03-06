defmodule GithubApi.Github.Client do

  @client Application.get_env(:github_api, :github_client)

  def get_user(user) do
    @client.get_user(user)
  end

  def get_repos(user) do
    @client.get_repos(user)
  end
end
