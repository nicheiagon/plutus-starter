module Main where

import qualified Spec.Trace
import Test.Tasty
import GHC.IO.Encoding

main :: IO ()
main = do
    setLocaleEncoding utf8
    defaultMain tests

tests :: TestTree
tests =
  testGroup
    "Use cases"
    [ Spec.Trace.tests
    ]