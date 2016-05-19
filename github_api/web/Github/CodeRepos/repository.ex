defmodule GithubApi.Github.CodeRepos.Repository do
alias GithubApi.Repo
alias GithubApi.Github.CodeRepos.CodeRepo

  def all do
    Repo.all(CodeRepo)
  end

  def save(code_repo) do
    Repo.insert(code_repo)
  end
end
