module NewDataTypes.Score (Score(..), mkScore, makeString) where

newtype Score = MkScore Double
  deriving (Eq, Show)

mkScore :: Real a => a -> Score
mkScore x = MkScore (realToFrac x)

makeString :: Score -> String
makeString (MkScore s) = show s