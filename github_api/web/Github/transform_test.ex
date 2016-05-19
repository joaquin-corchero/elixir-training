defmodule GithubApi.Github.TransformTest do
    use ExUnit.Case, async: true
    alias GithubApi.Github.Transform

    test "parse the response" do
        fileLocation = "test/sample_data/elixir_user_response.json"
        {:ok, content} = File.read(fileLocation)

        user = Transform.extract_user(content)

        assert user.full_name = "elixir-lang"
        assert user.public_repos = 14
    end
end
