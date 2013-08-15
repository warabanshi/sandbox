{--
data Shape = Circle Float Float Float |
            Rectangle Float Float Float Float
    deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x1 - x2) * (abs $ y1 - y2)
--}
module Shapes
(
    Point(..),
    Shape(..),
    area,
    nudge,
    baseCircle,
    baseRectangle,
) where

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

area :: Shape -> Float
area (Circle _ r) = r ^ 2 * pi
area (Rectangle (Point x1 y1) (Point x2 y2)) = 
    (abs $ x1 - x2) * (abs $ y1 - y2)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) dx dy = Circle (Point (x+dx) (y+dy)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) dx dy =
    Rectangle (Point (x1+dx) (y1+dy)) (Point (x2+dx) (y2+dy))

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRectangle :: Float -> Float -> Shape
baseRectangle w h = Rectangle (Point 0 0) (Point w h)
