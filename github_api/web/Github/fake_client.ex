defmodule GithubApi.Github.FakeClient do
  def get_user(_user) do
    {:ok, user} = File.read("test/sample_data/elixir_user_response.json")
    user
  end
end
