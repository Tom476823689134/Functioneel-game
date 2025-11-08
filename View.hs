module View (view) where

import Graphics.Gloss
import GameStuff
import Animation

view :: GameState -> IO Picture
view gs = return $ Pictures 
    [drawPlayer (player gs),
     drawEnemies (enemies gs),
     drawBullets (playerBullets gs),
     drawBullets (enemyBullets gs),
     drawScore (score gs)
    ]