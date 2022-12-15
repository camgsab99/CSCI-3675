-- Write a function sub in Haskell, using recursion, that takes two characters
-- and a string, and returns a string identical to the string passed, 
-- except that every occurrence of the first character has been replaced with the second character. 
-- For example, sub 'e''E'"Greenville" should return "GrEEnvillE". 
-- Make sure you indicate the type of this function.
sub :: Char -> Char -> String -> String
sub _ _ [] = []
sub a b (x:xs) = if x == a then b : tail else x : tail where
    tail = sub a b xs

-- Write a function merge in Haskell, using recursion, that merges two sorted
-- lists to give a single sorted list. For example, merge [2, 5, 6] [1, 3, 4] should
-- return [1, 2, 3, 4, 5, 6]. Make sure you indicate the type of this function.
merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge [] (x:xs) = x : xs
merge (x:xs) [] = x : xs
merge (x:xs) (y:ys) = if x < y then x : merge xs (y:ys) else y : merge (x:xs) ys

main = do
    print (sub 'e' 'E' "Greenville")
    print (merge [2, 5, 6] [1, 3, 4])
