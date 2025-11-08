module Position (Position(..), makeString) where

data Position = MkPosition Int Int
  deriving (Eq, Show)

makeString :: Position -> String
makeString (MkPosition x y) = "(" ++ show x ++ ", " ++ show y ++ ")"
