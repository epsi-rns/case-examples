exclude :: String -> ([String] -> [String])
exclude tag = filter((/=) tag)

unique :: [String] -> [String]
unique [] = []
unique (tag:tags) = tag:unique(exclude tag tags)

tags :: [String]
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = print (unique tags)
