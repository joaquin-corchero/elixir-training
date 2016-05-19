defmodule GithubApi.Github.FakeClient do
  def get_user(_user) do
    {:ok, user} = File.read("test/sample_data/elixir_user_response.json")
    user
  end

  def get_repos(_user) do
    {:ok, repos} = File.read("test/sample_data/elixir_user_repos_response.json")
    repos
  end
end
