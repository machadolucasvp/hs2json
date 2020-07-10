module JSON where

data Json = JsonString String
                | JsonNumber Double
                | JsonBool Bool
                | JsonNull
                | JsonObject[(String, Json)]
                | JsonArray [Json]
                    deriving (Eq, Ord, Show)

getString :: Json -> Maybe String
getString (JsonString s) = Just s
getString _              = Nothing

getInt :: Json -> Maybe Int
getInt (JsonNumber n) = Just (truncate n)
getInt _           = Nothing

getDouble :: Json -> Maybe Double
getDouble (JsonNumber n) = Just n
getDouble _           = Nothing

getBool :: Json -> Maybe Bool
getBool (JsonBool b) = Just b
getBool _         = Nothing

getObject :: Json -> Maybe [(String, Json)]
getObject (JsonObject o) = Just o
getObject _           = Nothing

getArray :: Json -> Maybe [Json]
getArray (JsonArray a) = Just a
getArray _          = Nothing

isNull :: Json -> Bool
isNull v = v == JsonNull


