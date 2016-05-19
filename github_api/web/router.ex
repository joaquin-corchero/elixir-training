defmodule GithubApi.Router do
  use GithubApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GithubApi do
    pipe_through :api
  end
end
