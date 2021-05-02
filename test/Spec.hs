{-# LANGUAGE TemplateHaskell #-}
import Test.QuickCheck ( quickCheckAll )
import Test.QuickCheck.All () 
import Data.List (intersperse)
import System.Exit(exitSuccess, exitFailure)

prop_revapp :: [Int] -> [Int] -> Bool
prop_revapp xs ys = reverse (xs++xs) == reverse xs ++ reverse xs

split :: Char -> String -> [String]
split c [] = []
split c xs = xs' : if null xs'' then [] else split c (tail xs'')
    where xs' = takeWhile (/=c) xs
          xs''= dropWhile (/=c) xs

unsplit :: Char -> [String] -> String
unsplit c = concat . intersperse [c]

-- show
prop_split_inv :: Char -> String -> Bool
prop_split_inv c xs = unsplit c (split c xs) == xs

return []
runTests :: IO Bool
runTests = $quickCheckAll

main :: IO ()
main = runTests >>= \passed -> if passed then exitSuccess else exitFailure