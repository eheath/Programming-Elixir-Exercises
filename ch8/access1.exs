cast = [
  %{
    character: "Buttercup",
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  %{
    character: "Westley",
    actor: %{
      first: "Cary",
      last: "Elwes"
    },
    role: "farm boy"
  }
]

IO.inspect get_and_update_in(cast, [Access.all(), :actor, :last],
                              fn (val) -> {val, String.upcase(val)} end)