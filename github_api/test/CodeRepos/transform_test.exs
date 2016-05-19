defmodule GithubApi.Github.CodeRepos.TransformTest do
    use ExUnit.Case, async: true
    alias GithubApi.Github.CodeRepos.Transform

    test "parse the response" do
        fileLocation = "test/sample_data/elixir_user_repos_response.json"
        {:ok, content} = File.read(fileLocation)

        repos = Transform.extract_repos(content)

        assert length(repos) == 15
    end
end
