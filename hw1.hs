-- Exercise One
toDigits :: Integer -> [Integer]
toDigits x
    | x <=0 = []
    | otherwise = toDigits (x `div` 10) ++ [x `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev x
    |  x <=0 = []
    | otherwise = [x `mod` 10] ++ toDigits (x `div` 10) 

-- Exercise Two
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = map (uncurry ($)) (zip (cycle [((*) 1), ((*) 2)]) xs)

-- Exercise Three
sumDigits :: [Integer] -> Integer
sumDigits xs = 5

main = do 
    putStrLn "The double of a list is of 5 is:" 
    print (toDigits (-10))
    print (toDigits(20))
    print (doubleEveryOther(toDigitsRev(20)))

--    print( toDigits (-20))