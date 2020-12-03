main = getContents >>= print . sum . takeWhile (>= 0) . map read . lines


-- this is code for output the sum of the non-negative integers without using the do notation.


