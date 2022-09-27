-- Returns the square of each odd number in the list
squareOddsRecursive :: [Int] -> [Int]
squareOddsRecursive [] = []
squareOddsRecursive (x:xs) = if odd x then x^2 : tail else tail where
    tail = squareOddsRecursive xs  

-- List comprehension that returns the square of each odd number in the list
squareOddsComprension :: [Int] -> [Int]
squareOddsComprension xs = [x^2 | x <- xs, odd x]

-- Returns the string with the first letter capitalized using list comprehension
--capitalize :: String -> String
--capitalize (x:xs) = [toUpper x] ++ xs

-- Return the product of all the elements in the list
prodRecursive :: [Int] -> Int
prodRecursive [] = 1
prodRecursive (x:xs) = x * prodRecursive xs

-- Return True/False if the string is a palindrome
palindromeRecursive :: String -> Bool
palindromeRecursive [] = True
palindromeRecursive [x] = True
palindromeRecursive (x:xs) = x == last xs && palindromeRecursive (init xs)

-- Returns all numbers in the input list within the range given by the first two arguments
inRangeRecursive :: Int -> Int -> [Int] -> [Int]
inRangeRecursive _ _ [] = []
inRangeRecursive a b (x:xs) = if x >= a && x <= b then x : tail else tail where
    tail = inRangeRecursive a b xs

-- returns all numbers in the input list within the range given by the first two arguments using list comprehension
inRangeComprension :: Int -> Int -> [Int] -> [Int]
inRangeComprension a b xs = [x | x <- xs, x >= a, x <= b]

-- returns a^b, where b is a non-negative integer
power a b = if b == 0 then 1 else a * power a (b-1)


main = do
    print (squareOddsRecursive [0, 2, 1, 7, 8, 56, 17, 18])
    print (squareOddsComprension [0, 2, 1, 7, 8, 56, 17, 18])
    --print (capitalizeComprehension "grEENVIlle")
    print (prodRecursive [3, 2, 1])
    print (palindromeRecursive "abba")
    print (palindromeRecursive "abb")
    print (inRangeRecursive 5 10 [9, 3, 12])
    print (inRangeComprension 5 10 [9, 3, 12])
    print (power 2 3)