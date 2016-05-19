defmodule GithubApi.Github.ClientTest do
  use ExUnit.Case, async: true
  alias GithubApi.Github.HTTPClient

  @tag :integration
  test "fetches a user from Github" do
    response = HTTPClient.get_user("elixir-lang")

    assert String.contains?(response, ["elixir-lang","http://elixir-lang.org"])
  end
end
