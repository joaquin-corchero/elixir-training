defmodule RomanNumberals do
  @translation [{"X", 10}, {"IX", 9}, {"V", 5}, {"IV", 4}, {"I", 1}]

  def convert(number) do
    do_convert(number, @translation, "")
  end

  defp do_convert(0, _translations, result), do: result
  defp do_convert(number, [{latin, arabic} | rest] = translations, result) do
    if(number >= arabic) do
      do_convert(number - arabic, translations, result <> latin)
    else
      do_convert(number, rest, result)
    end
  end
end
