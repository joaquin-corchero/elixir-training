defmodule GithubApi.Github.CodeRepos.CodeRepo do
#  use GithubApi.Web, :model

defstruct [:full_name, :html_url, :description]
  #@derive {Poison.Encoder, only: [:full_name, :html_url, :description]}#indicates how to encode it

  #schema "coderepositories" do
  #  field :full_name, :string
  #  field :html_url, :string
  #  field :description, :string
#
#    timestamps
#  end
end
