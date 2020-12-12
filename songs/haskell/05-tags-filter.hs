exclude :: String -> [String] -> [String]
exclude tag xs = [ x | x <- xs, (/=) tag x ]

tags :: [String]
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = print (exclude "rock" tags)
