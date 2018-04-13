module Main where
import System.Environment
import qualified MainGloss1
import qualified MainGloss2
import qualified MainGloss3
import qualified MyGloss1
import qualified MyGloss2
import qualified MyGloss3

usage :: IO ()
usage = do
  f "Usage: practice-gloss-exe FOLLOWING_ARGS"
  f "  MainGloss1"
  f "  MainGloss2"
  f "  MainGloss3"
  f "  MyGloss1"
  f "  MyGloss2"
  f "  MyGloss3"
  where
    f = putStrLn

main :: IO ()
main = do
  a <- getArgs
  f a
  where
    f :: [String] -> IO ()
    f ["MainGloss1"] = MainGloss1.main
    f ["MainGloss2"] = MainGloss2.main
    f ["MainGloss3"] = MainGloss3.main
    f ["MyGloss1"]   = MyGloss1.main
    f ["MyGloss2"]   = MyGloss2.main
    f ["MyGloss3"]   = MyGloss3.main
    f _              = usage
