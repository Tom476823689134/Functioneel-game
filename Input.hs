module Input (handleInput) where

import Graphics.Gloss.Interface.IO.Game
import GameStuff
import DataTypes.Position

handleInput :: Event -> GameState -> IO GameState
handleInput event gs = case event of
    EventKey (SpecialKey KeyLeft) Down _ _ -> return $ movePlayer (-10) gs
    EventKey (SpecialKey KeyRight) Down _ _ -> return $ movePlayer 10 gs
    _ -> return gs