

find :: (Eq a) => [a] -> a -> Bool
find [] _ = False
find (x:xs) a
  | x == a    = True
  | otherwise = find xs a

uniqueEle :: (Eq a) => [a] -> [a]
uniqueEle [] = []
uniqueEle (x:xs)
  | find xs x  = uniqueEle xs
  | otherwise = x : uniqueEle xs