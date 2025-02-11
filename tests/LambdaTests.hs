import Test.HUnit

import Lambda

parse_simple_lambda :: Test
parse_simple_lambda = TestCase (assertEqual "λx.x" (Right (AbsExpr "x" (VarExpr "x"))) (parseSingleExpr "λx.x"))

allTests :: Test
allTests = TestList [
  TestLabel "Test parse" (TestList [
      parse_simple_lambda 
  ])
 ]

main :: IO Counts
main = runTestTT allTests

