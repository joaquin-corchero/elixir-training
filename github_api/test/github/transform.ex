defmodule GithubApi.Github.Transform do

  def extract_user(content) do
    Poison.decode(content)
  end
end
