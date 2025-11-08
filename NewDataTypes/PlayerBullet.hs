module PlayerBullet (PlayerBullet(..)) where

import Position (Position(..))
import NewDataTypes.Speed (Speed(..))

data PlayerBullet = PlayerBullet
  {playerBulletPosition :: Position,
   playerBulletSpeed    :: Speed
  } deriving (Eq, Show)