module Step06 where
import Prelude
import Data.Array (filter)
import Effect.Console (log)

exclude :: String -> Array String -> Array String
exclude tag xs = filter((/=) tag) xs

tags :: Array String
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = log $ show (exclude "rock" tags)
