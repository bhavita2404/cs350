
quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let small = quicksort [a | a <- xs, a <= x]  
        large = quicksort [a | a <- xs, a > x]  
    in small ++ [x] ++ large 