factorial :: Integer -> Integer
factorial n = product [1..n]

compute :: Double -> Integer -> Double
compute x n = ( (-1) ^ n * (x ** fromIntegral (2*n +1)) ) / fromIntegral (factorial (2*n +1))

main :: IO()
main = do
    let x = 3
    let a = sum (map (compute x) [0..10])
    let b = sin x
    print a
    print b
    print (abs (a-b) < 0.001)

