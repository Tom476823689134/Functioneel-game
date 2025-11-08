module Animation (Animation(..), updateAnimation) where

import Graphics.Gloss
import GameStuff
import NewDataTypes.Position
import NewDataTypes.Time

data Animation = Animation 
{animationPosition :: Position,
 duration :: Time,
 currentFrame :: Frame,
 sprite :: Sprite
}

updateAnimation :: Float -> Animation -> Animation
updateAnimation dt anim = anim { currentFrame = newFrame }
  where
    newFrame = currentFrame anim + 1