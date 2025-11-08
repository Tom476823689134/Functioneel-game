module Enemy (Enemy(..), Meteor(..), Fighter(..), Canon(..), Spitfire(..), Floater(..), RandomMover(..)) where

import NewDataTypes.Health (Health(..))
import NewDataTypes.Speed (Speed(..))
import Position (Position(..))
import NewDataTypes.Time (Time(..))

data Meteor = Meteor 
  {meteorSpeed :: Speed, -- a part of enemy
   meteorPosition :: Position,
   metheorDamage :: Health,
   meteorHealth :: Health
  } deriving (Eq, Show)

data Fighter = Fighter 
{fighterSpeed :: Speed, -- a part of enemy
 fighterPosition :: Position,
 fighterDamage :: Health,
 fighterBulletDamage :: Health,
 fighterHealth :: Health
} deriving (Eq, Show)

data Canon = Canon 
{canonSpeed :: Speed, -- a part of enemy
 canonPosition :: Position,
 canonDamage :: Health,
 canonBulletDamage :: Health,
 canonHealth :: Health,
 bulletSize :: Size
} deriving (Eq, Show)

data Spitfire = Spitfire 
{spitfireSpeed :: Speed, -- a part of enemy
 spitfirePosition :: Position,
 spitfireDamage :: Health,
 spitfireBulletDamage :: Health,
 spitfireHealth :: Health,
 bulletSpeed :: Speed
} deriving (Eq, Show)

data Floater = Floater 
{floaterPosition :: Position, -- a part of enemy
 floaterBulletDamage :: Health,
 floaterDeathTime :: Time
} deriving (Eq, Show)

data RandomMover = RandomMover 
{randomMoverSpeed :: Speed, -- a part of enemy
 randomMoverPosition :: Position,
 randomMoverDamage :: Health,
 randomMoverBulletDamage :: Health,
 randomMoverHealth :: Health
} deriving (Eq, Show)

data Enemy
  = EnemyMeteor Meteor
  | EnemyFighter Fighter
  | EnemyCanon Canon
  | EnemySpitfire Spitfire
  | EnemyFloater Floater
  | EnemyRandomMover RandomMover
  deriving (Eq, Show)