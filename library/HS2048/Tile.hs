module HS2048.Tile 
    ( Tile
    , parse
    , render
    , score
    ) where

type Tile = Maybe Int

parse :: String -> Tile
parse "-" = Nothing
parse s = Just (read s)

render :: Tile -> String
render Nothing = "-"
render (Just n) = show n

score :: Tile -> Int
score Nothing = 0
score (Just n) = n