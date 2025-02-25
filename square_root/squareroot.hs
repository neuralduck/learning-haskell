search :: Double -> Double -> Double -> Double
search a b x
    | abs (mid^2 -x) <= 0.001 = mid
    | mid^2 < x = search mid b x
    | otherwise = search a mid x
    where
        mid = (a + b) / 2

root :: Double -> Maybe Double
root x
    | x < 0 = Nothing
    | x == 0 = Just 0
    | x == 1 = Just 1
    | otherwise = Just (search 0 x x)


main :: IO()
main = print(root 12)