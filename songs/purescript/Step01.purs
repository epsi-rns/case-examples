module Step01 where
import Prelude
import Effect.Console (log)

tags :: Array String
tags = ["rock", "jazz", "rock", "pop", "pop"]

main = do
  log (show tags)
