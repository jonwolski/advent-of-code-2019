import Control.Lens
import Data.List.Split

run :: [Int] -> [Int] -> [Int]
run (99:_) tape = tape
-- This will not work. This does not mutate the tape that is being run
run (1:r0:r1:r2:tape_head) tape = run tape_head (element r2 .~ (r0 + r1) $ tape)
run (2:r0:r1:r2:tape_head) tape = run tape_head (element r2 .~ (r0 * r1) $ tape)

processLine :: String -> Int
processLine input = head $ run ns ns
  where ns = map read $ splitOn "," input


main = do
  ns <- getLine
  putStr (show $ processLine ns)
