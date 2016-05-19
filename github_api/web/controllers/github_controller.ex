defmodule GithubApi.GithubController do
  use GithubApi.Web, :controller

  def user(conn, %{"user" => user}) do
    send_resp conn, 200, ""
  end
end
