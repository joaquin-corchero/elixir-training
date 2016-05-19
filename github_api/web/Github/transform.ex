defmodule GithubApi.Github.Transform do
  alias GithubApi.Github.Users.User

  def extract_user(content) do
    {:ok, result} = Poison.decode(content, as: %User{})

    result
  end
end
