main = do
    totalSum <- find_sum 0
    print totalSum

find_sum :: Int -> IO Int
find_sum previous = do 
    b<-getLine
    let m = (read b)::Int
    if m<0
        then return previous
    else find_sum (m+previous)


