

data Playing = Playing | Pausing
data Status = Alive | Dead
data Collision = Hit | NoHit

data GameState = GameState
  { playing       :: Playing
  , enemies       :: [Enemy]         -- Enemy is een class
  , enemyBullets  :: [EnemyBullet]
  , score         :: Score
  , player        :: Player
  , playerBullets :: [PlayerBullet]
  }

data Meteor = Meteor 
  {meteorSpeed :: Speed, -- a part of enemy
   meteorPosition :: Position,
   metheorDamage :: Health,
   meteorHealth :: Health}

