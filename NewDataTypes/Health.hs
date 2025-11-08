module Health (Health(..), mkHealth, makeString) where

newtype Health = MkHealth Double
  deriving (Eq, Show)

mkHealth :: Real a => a -> Health
mkHealth x = MkHealth (realToFrac x)

makeString :: Health -> String
makeString (MkHealth h) = show h