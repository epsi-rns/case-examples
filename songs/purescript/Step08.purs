module Step08 where
import Prelude
import Data.Array (nub)
import Effect.Console (log)

tags :: Array String
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = log $ show $ nub $ tags

