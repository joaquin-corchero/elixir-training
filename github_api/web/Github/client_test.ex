defmodule GithubApi.Github.Client do
  @base_url "https://api.github.com/"

  def get_user(username) do
    query_url_for_user = "#{@base_url}users/#{username}"

    response = HTTPotion.get(query_url_for_user, headers: ["User-Agent": "Agent"])
    response.body
  end
end
