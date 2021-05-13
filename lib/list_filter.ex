defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.map(&Integer.parse(&1))
    |> Enum.filter(fn elem -> is_tuple(elem) end)
    |> Enum.filter(fn {int, _dec} -> Integer.is_odd(int) end)
    |> Enum.count()
  end
end
