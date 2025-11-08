module Update (step) where

import GameStuff
import NewDataTypes.Position
import NewDataTypes.Speed
import NewDataTypes.Health

step :: Float -> GameState -> IO GameState
step delta gs = do
    let newEnemies = map (moveEnemy delta) (enemies gs)
    let newPlayerBullets = map (movePlayerBullet delta) (playerBullets gs)
    let newEnemyBullets  = map (moveEnemyBullet delta) (enemyBullets gs)
    let (aliveEnemies, scoreBonus) = handleCollisions newEnemies newPlayerBullets
    let updatedPlayer = updatePlayer delta (player gs)
    return gs
        { enemies       = aliveEnemies
        , playerBullets = newPlayerBullets
        , enemyBullets  = newEnemyBullets
        , player        = updatedPlayer
        , score         = updateScore (score gs) scoreBonus
        }