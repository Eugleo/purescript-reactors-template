module Main where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Reactor
  ( CoordinateSystem
  , Reactor
  , cell
  , executeDefaultBehavior
  , fill
  , grid
  , modify_
  , preventDefaultBehavior
  , runReactor
  , togglePause
  , utilities
  , wrt
  )
import Reactor.Events (KeypressEvent(..), MouseEvent(..))
import Reactor.Graphics.Colors as Color
import Reactor.Graphics.CoordinateSystem (moveDown, moveLeft, moveRight, moveUp)
import Reactor.Internal.Helpers (withJust)

main :: Effect Unit
main = runReactor reactor { title: "Moving Dot", width: 20, height: 20 }

type Point = CoordinateSystem { x :: Number, y :: Number }

type World =
  { player :: Point
  , cursor :: Maybe Point
  , paused :: Boolean
  }

reactor :: forall m. Reactor m World
reactor = { init, onMouse, onKey, draw, onTick: \_ -> pure unit }
  where
  init =
    { player: { x: 0, y: 0 } `wrt` grid
    , cursor: Nothing
    , paused: false
    }

  draw { cursor, player } = do
    fill Color.blue400 $ cell player
    withJust cursor $ fill Color.gray200 <<< cell

  onMouse (MouseEvent { x, y }) = do
    modify_ \w -> w { cursor = Just $ { x, y } `wrt` grid }
    preventDefaultBehavior

  onKey (KeypressEvent key _) = do
    { bound } <- utilities
    case key of
      "ArrowLeft" -> do
        modify_ \w -> w { player = bound $ moveLeft w.player }
        preventDefaultBehavior
      "ArrowRight" -> do
        modify_ \w -> w { player = bound $ moveRight w.player }
        preventDefaultBehavior
      "ArrowDown" -> do
        modify_ \w -> w { player = bound $ moveDown w.player }
        preventDefaultBehavior
      "ArrowUp" -> do
        modify_ \w -> w { player = bound $ moveUp w.player }
        preventDefaultBehavior
      " " -> do
        togglePause
        preventDefaultBehavior
      _ -> executeDefaultBehavior