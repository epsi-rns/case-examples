module Step07 where
import Prelude
import Effect.Console (log)
import Data.Array (filter)
-- import Data.Array.Unique

exclude :: String -> Array String -> Array String
exclude tag xs = filter((/=) tag) xs

unique :: Array String -> Array String
unique [] = []
unique (tag:tags) = cons tag unique(exclude tag tags)

tags :: Array String
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = log $ show (unique tags)

