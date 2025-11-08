module Time (Time(..), makeString) where

data Time = MkTime Int Int
  deriving (Eq, Show)

makeString :: Time -> String
makeString (MkTime h m) =
  show h ++ ":" ++ (if m < 10 then "0" else "") ++ show m