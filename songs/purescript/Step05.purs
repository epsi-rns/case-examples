module Step05 where
import Prelude
import Effect.Console (log)
import Data.Array (filter)

exclude :: String -> Array String -> Array String
exclude tag xs = filter((/=) tag) xs

tags :: Array String
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = log (exclude "rock" tags)
