import Control.Monad.State.Strict
import qualified Data.Map.Strict as Map

fibonacci :: Int -> State (Map.Map Int Integer) Integer
fibonacci 0 = return 0
fibonacci 1 = return 1
fibonacci n = do
  a <- find (n-2) (fibonacci (n-2))
  b <- find (n-1) (fibonacci (n-1))
  return (a+b)

find :: (Ord k) => k -> State (Map.Map k v) v -> State (Map.Map k v) v
find k checkifEmptyState = do
  maybeVal <- gets (Map.lookup k)
  case maybeVal of
    Just v -> return v
    Nothing -> do
      cifEmpty <- checkifEmptyState
      modify (Map.insert k cifEmpty)
      return cifEmpty


