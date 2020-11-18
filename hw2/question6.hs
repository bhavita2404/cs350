a) data BinaryTree a = Empty | Branch a (BinaryTree a) (BinaryTree a) deriving (Show, Eq)

b)
mapTree :: (a -> b) -> Tree a -> Tree b
mapTree f Nil = Nil
mapTree f (Branch x t1 t2) = Branch (f x) (mapTree f t1) (mapTree f t2)    // where t1 and t2 are sub binary trees


c)
foldTree :: b -> (a -> b -> b -> b) -> Tree a -> b
foldTree f id Empty = id
foldTree f id (Branch a t1 t2) = (f a) (foldTree f id t1) (foldTree f id t2)
