module Tests (tests) where

import           Test.QuickCheck
import           Distribution.TestSuite

tests :: IO [Test]
--tests = return []
tests = return [ Test succeeds{-, Test fails-} ]
  where
    succeeds = TestInstance
        { run = return $ Finished Pass
        , name = "succeeds"
        , tags = []
        , options = []
        , setOption = \_ _ -> Right succeeds
        }
    fails = TestInstance
        { run = return $ Finished $ Fail "Always fails!"
        , name = "fails"
        , tags = []
        , options = []
        , setOption = \_ _ -> Right fails
        }
