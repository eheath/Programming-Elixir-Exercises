defmodule Enums do

  def all?([], _func), do: true

  def all?([head | tail], func) do
    func.(head) && all?(tail, func)
  end



  def each([], _func), do: []

  def each([head | tail], func) do
    [func.(head) | each(tail, func)]
  end



  def filter([], _func), do: []

  def filter([head | tail], func) do
    if func.(head) do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end
  end



  def split(list, n) do
    do_split(list, n, [])
  end

  defp do_split(list, 0, acc) do
    {acc, list}
  end

  defp do_split([head | tail], n, acc) do
    do_split(tail, n - 1, acc ++ head )
  end



  def take(list, n), do: do_take(list, n)

  defp do_take(_, 0), do: []

  defp do_take([], _), do: []

  defp do_take([head | tail], n), do: [head | do_take(tail, n - 1)]


  def flatten([]), do: []
  def flatten([head | tail]), do: flatten(head) ++ flatten(tail)
  def flatten(val), do: [val]


end