Enum.map [1,2,3,4], &(IO.puts &1 + 2)
IO.puts "NEXT"
Enum.map [1,2,3,4], &(IO.inspect &1)