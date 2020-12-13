module Step07 where
import Prelude
import Effect.Console (log)
import Data.Array (filter, (:), cons, uncons)
import Data.Maybe

exclude :: String -> Array String -> Array String
exclude tag xs = filter((/=) tag) xs

unique :: Array String -> Array String
unique tags = case uncons tags of
  Nothing -> []
  Just {head: tag, tail: tags} -> cons tag (unique (exclude tag tags))

tags :: Array String
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = log $ show (unique tags)

