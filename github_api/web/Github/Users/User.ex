defmodule GithubApi.Github.Users.User do
  use GithubApi.Web, :model

  @derive {Poison.Encoder, only: [:login, :public_repos]}#indicates how to encode it

  schema "users" do
    field :login, :string
    field :public_repos, :integer

    timestamps
  end
end
