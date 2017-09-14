defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)


  def mapsum([], _), do: 0
  def mapsum([head | tail], func) do
    sum([func.(head) | [mapsum(tail, func)]])
  end


  def max([head | tail]), do: _max(tail, head)

  defp _max([], highest), do: highest
  defp _max([head | tail], highest) when head >= highest, do: _max(tail, head)
  defp _max([head | tail], highest) when head < highest, do: _max(tail, highest)

  def caesar(list, n), do: _caesar(list, n)

  defp _caesar([head | []], n), do: [_addn(head, n)]

  defp _caesar([head | tail], n) do
    [_addn(head, n) | _caesar(tail, n)]
  end

  defp _addn(val, n) when val + n > 122 do
    (val + n) - 26
  end

  defp _addn(val, n), do: val + n

end