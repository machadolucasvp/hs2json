module Render where

import           Data.List                      ( intercalate )
import           Json

renderJson :: Json -> String
renderJson (JsonString s    ) = show s
renderJson (JsonNumber n    ) = show n
renderJson (JsonBool   True ) = "true"
renderJson (JsonBool   False) = "false"
renderJson JsonNull           = "null"

renderJson (JsonObject o)     = "{" ++ pairs o ++ "}"
 where
  pairs [] = ""
  pairs ps = intercalate ", " (map renderPair ps)
  renderPair (k, v) = show k ++ ": " ++ renderJson v

renderJson (JsonArray a) = "[" ++ values a ++ "]"
 where
  values [] = ""
  values vs = intercalate ", " (map renderJson vs)

putJson :: Json -> IO ()
putJson v = putStrLn (renderJson v)
