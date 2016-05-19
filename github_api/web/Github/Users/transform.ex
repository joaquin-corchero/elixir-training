defmodule GithubApi.Github.Users.Transform do
  alias GithubApi.Github.Users.User

  def extract_user(raw_response) do
    raw_response
    |> parse
    |> convert_keys_to_atoms
    |> remove_updated_at_key
    |> convert_map_to_struct
  end

  defp parse(response) do
    Poison.Parser.parse!(response, as: %User{})
  end

  defp convert_keys_to_atoms(user) do
    for {key, val} <- user, into: %{}, do: {String.to_atom(key), val}
  end

  defp remove_updated_at_key(user) do
    Map.delete(user, :updated_at)
  end

  defp convert_map_to_struct(user) do
    struct(User, user)
  end

end
