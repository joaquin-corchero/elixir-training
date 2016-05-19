defmodule GithubApi.Router do
  use GithubApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GithubApi do
    pipe_through :api
    get "/users/:user", GithubController, :user
  end
end
