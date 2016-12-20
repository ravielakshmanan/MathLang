open Ast

type sexpr =
  | SBinop of sexpr * op * sexpr * typ
  | SUnop of uop * sexpr * typ
