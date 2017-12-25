module Main where

import Generator
import System.IO
import Control.Concurrent.Thread.Delay


printLines :: [String] -> IO ()
printLines (f : rest) = do
	putStrLn f
	delay (2 * 60 * 1000000)
	printLines rest

main :: IO()
main = do
	hSetBuffering stdout NoBuffering
	printLines allStrings
