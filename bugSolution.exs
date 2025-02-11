```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)

IO.puts("Sum of elements greater than 3: #{result}")

#Alternative Solution for improved clarity and potential for handling edge cases
list2 = [1,2,3]
result2 = Enum.filter(list2, fn x -> x > 3 end) |> Enum.sum()
IO.puts("Sum of elements greater than 3: #{result2}") #output 0
```