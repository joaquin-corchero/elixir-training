defmodule GithubApi.Github.Users.RepositoryTests do
  use ExUnit.Case, async: false
  alias GithubApi.Github.Users.Repository
  alias GithubApi.Github.Users.User

  test "returns an empty list when there are no records" do
    assert Repository.all == []
  end

  test "we can store a user record" do
    user = %User{login: "username", public_repos: 100}

    Repository.save(user)
    saved_user = Repository.all |> List.first
    assert saved_user.login == user.login
    assert saved_user.public_repos == user.public_repos
  end
end
