compute :: Int -> Int -> Int
compute n acc
    | n == 0 = acc
    | otherwise = compute (n-1) (n*acc)
factorial n = compute n 1
main :: IO()
main = print(factorial 12)