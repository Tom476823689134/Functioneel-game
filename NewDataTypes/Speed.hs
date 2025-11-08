module Speed (Speed(..), makeString) where

newtype Speed = MkSpeed String
  deriving (Eq, Show)

mkSpeed :: Show a => a -> Speed
mkSpeed x = MkSpeed (show x)

makeString :: Speed -> String
makeString (MkSpeed s) = s