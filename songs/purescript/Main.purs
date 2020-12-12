module Main where

import Prelude

import Effect.Console (log)

data Person = Person { name :: String, age :: Int }

showPerson :: Person -> String
showPerson (Person o) = o.name <> ", aged " <> show o.age

examplePerson :: Person
examplePerson = Person { name: "Bonnie", age: 26 }

main = do
  log ("The answer is " <> showPerson examplePerson)
