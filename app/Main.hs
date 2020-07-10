module Main where

import           JSON
import           Prettify
import           PrettyJSON


value = renderJson
  $ JsonObject [("Hello", JsonString "World!"), ("Haskell", JsonBool True)]

main :: IO ()
main = do
  putStrLn (pretty 10 value)
  putStrLn (pretty 20 value)
  putStrLn (pretty 30 value)
