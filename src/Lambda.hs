module Lambda where

import Data.String

data Keyword = LambdaToken | DotToken | LetToken | AssigmentToken | InToken

instance Show Keyword where
  show LambdaToken    = "λ"
  show DotToken       = "."
  show LetToken       = "let"
  show AssigmentToken = "="
  show InToken        = "in"


data Token = Keyword | UserName String

data Expression = VarExpr String
                | AppExpr Expression Expression
                | AbsExpr String Expression
                | LetExpr String Expression Expression
                deriving (Eq, Show)
                

data ParseError = UnknownError
                deriving (Eq, Show)

type ParseResult = Either ParseError


parseSingleExpr :: String -> ParseResult Expression
parseSingleExpr s = Left UnknownError
