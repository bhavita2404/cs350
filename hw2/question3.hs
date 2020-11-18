neighbours :: (Ord a, Ord b, Num a, Num b) => a -> b -> [(a,b)]
neighbours a b =  [(t1,t2) | t1 <- [a-1, a, a+1], t2 <- [b-1, b, b+1], t1 >= 0 && t2 >= 0 && t1 <= 9  && t2 <= 9 && (t1/=a || t2/=b)]