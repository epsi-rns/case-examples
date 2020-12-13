unique [] = []
unique (x:xs) = x : unique (filter ((/=) x) xs)

tags = ["rock", "jazz", "rock", "pop", "pop"]

main = print (unique tags)
