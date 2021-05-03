module Lib where

foo1 :: Num a => a -> a -> a
foo1 a b = a * b

foo2 :: Num a => a -> a -> a
foo2 a b = a - b

isPalindrome :: String -> Bool
isPalindrome text = cleanText == reverse cleanText
  where cleanText = filter (not . (`elem` ['!','.'])) text

-- "this is a string"
isString :: String -> String
isString x = x ::String

-- 'z'
isChar :: Char -> Char
isChar x = x ::Char

-- true
isBool :: Bool -> Bool
isBool x = x ::Bool

-- 1
isInt :: Int -> Int
isInt x = x ::Int

-- 30414093201713378043612608166064768844377641568960512000000000000
isInteger :: Integer -> Integer
isInteger x = x ::Integer

-- 4.0
isFloat :: Float -> Float
isFloat x = x ::Float















