module Lib where

foo1 :: Num a => a -> a -> a
foo1 a b = a * b

foo2 :: Num a => a -> a -> a
foo2 a b = a - b

isPalindrome :: String -> Bool
isPalindrome text = cleanText == reverse cleanText
  where cleanText = filter (not . (`elem` ['!','.'])) text






