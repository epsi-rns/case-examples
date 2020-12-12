exclude :: String -> ([String] -> [String])
exclude tag = filter((/=) tag)

tags :: [String]
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = print (exclude "rock" tags)
