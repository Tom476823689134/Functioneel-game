import Graphics.Gloss.Interface.IO.Game
import GameStuff
import View
import Input
import Update

main :: IO ()
main = do
    let initialWorld = initialGameState
    playIO 
        (InWindow "Game" (800, 600) (0, 0))
        black
        60
        initialWorld
        view
        handleInput
        step
        