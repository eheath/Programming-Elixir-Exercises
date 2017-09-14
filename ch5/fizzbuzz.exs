fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, x -> "#{x}"
end

do_fizzbuzz = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

IO.puts do_fizzbuzz.(10)
IO.puts do_fizzbuzz.(11)
IO.puts do_fizzbuzz.(12)
IO.puts do_fizzbuzz.(13)
IO.puts do_fizzbuzz.(14)
IO.puts do_fizzbuzz.(15)
IO.puts do_fizzbuzz.(16)