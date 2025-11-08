module Player (Player(..), Status(..)) where

import NewDataTypes.Health (Health(..))
import Position (Position(..))

data Status = Alive | Dead
  deriving (Eq, Show)

data Player = Player
  {playerStatus   :: Status,
   playerHealth   :: Health,
   playerPosition :: Position
  } deriving (Eq, Show)