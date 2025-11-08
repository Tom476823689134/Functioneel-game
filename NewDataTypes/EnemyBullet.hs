module EnemyBullet (EnemyBullet(..)) where

import Position (Position(..))
import NewDataType.Speed (Speed(..))
import NewDataTypes.Health (Health(..))

data EnemyBullet = EnemyBullet
  {enemyBulletPosition :: Position,
   enemyBulletSpeed    :: Speed,
   enemyBulletDamage   :: Health,
   bulletSize          :: Int
  } deriving (Eq, Show)