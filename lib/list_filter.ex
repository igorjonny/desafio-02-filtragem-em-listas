defmodule ListFilter do
  require Integer

  # pega a lista e filtra o numero e depois conta
  def call(list) do
    list
    |> Enum.filter(fn elem -> is_an_odd_num?(elem) end)
    |> Enum.count()
  end

  # aqui pega se na lista tem uma string case for uma string
  # converto ela num numero
  defp is_an_odd_num?(string) do
    case Integer.parse(string) do
      {num, _} -> Integer.is_odd(num)
      _ -> false
    end
  end
end
