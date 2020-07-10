module Main where

import           Json
import           Prettify
import           PrettyJson


value = renderJson
  $ JsonObject [("Hello", JsonString "World!"), ("Haskell", JsonBool True)]

main :: IO ()
main = do
  putStrLn (pretty 10 value)
  putStrLn (pretty 20 value)
  putStrLn (pretty 30 value)
