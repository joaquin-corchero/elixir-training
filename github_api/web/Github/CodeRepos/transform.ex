defmodule GithubApi.Github.CodeRepos.Transform do
  alias GithubApi.Github.CodeRepos.CodeRepo

  def extract_repo(raw_response) do
    raw_response
    |> convert_keys_to_atoms
    |> remove_updated_at_key
    |> convert_map_to_struct
  end

  defp parse(response) do
    Poison.Parser.parse!(response, as: %CodeRepo{})
  end

  defp convert_keys_to_atoms(code_repo) do
    for {key, val} <- code_repo, into: %{}, do: {String.to_atom(key), val}
  end

  defp remove_updated_at_key(code_repo) do
    Map.delete(code_repo, :updated_at)
  end

  defp convert_map_to_struct(code_repo) do
    struct(CodeRepo, code_repo)
  end

end
