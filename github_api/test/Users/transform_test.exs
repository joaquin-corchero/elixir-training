defmodule GithubApi.Github.Users.TransformTest do
    use ExUnit.Case, async: true
    alias GithubApi.Github.Users.Transform

    test "parse the response" do
        fileLocation = "test/sample_data/elixir_user_response.json"
        {:ok, content} = File.read(fileLocation)

        user = Transform.extract_user(content)

        assert user.login == "elixir-lang"
        assert user.public_repos == 15
    end
end
