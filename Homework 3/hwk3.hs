-- Returns the square of each odd number in the list
squareOddsRecursive :: [Int] -> [Int]
squareOddsRecursive [] = []
squareOddsRecursive (x:xs) = if odd x then x^2 : tail else tail where
    tail = squareOddsRecursive xs  

-- List comprehension that returns the square of each odd number in the list
squareOddsComprension :: [Int] -> [Int]
squareOddsComprension xs = [x^2 | x <- xs, odd x]

-- List comprehension that returns the word with the first letter capitalized
capitalize :: [String] -> [String]
capitalize xs = [toUpper (head x) : tail x | x <- xs]

main = do
    print (squareOddsRecursive [0, 2, 1, 7, 8, 56, 17, 18])
    print (squareOddsComprension [0, 2, 1, 7, 8, 56, 17, 18])
    print (capitalizeComprehension "grEENVIlle")