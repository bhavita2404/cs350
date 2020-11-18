
compute_words:: String -> Int
compute_words  x = foldl (+) 0 [(length (words y))| y<-(lines x)]