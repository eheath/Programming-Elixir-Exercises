defmodule Chop do
  def guess(actual, low..high) do
    this_guess = new_guess(low..high)
    IO.puts "Is it #{this_guess}"
    test_it(actual, this_guess, low..high)
  end

  def test_it(actual, g, low..high) when g == actual do
    IO.puts g
  end

  def test_it(actual, g, low..high) when g < actual do
    guess(actual, g + 1..high)
  end

  def test_it(actual, g, low..high) when g > actual do
    guess(actual, low..g - 1)
  end

  def new_guess(low..high) do
    div(high - low, 2) + low
  end

end