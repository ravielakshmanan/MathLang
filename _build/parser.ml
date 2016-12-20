type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | COMMA
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | NOT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | TRUE
  | FALSE
  | AND
  | OR
  | RETURN
  | RETURNS
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | FLOAT
  | BOOL
  | VOID
  | STRING
  | LITERAL of (int)
  | FLOATLIT of (float)
  | STRINGLIT of (string)
  | ID of (string)
  | FUNCTION
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 47 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* COMMA *);
  263 (* PLUS *);
  264 (* MINUS *);
  265 (* TIMES *);
  266 (* DIVIDE *);
  267 (* ASSIGN *);
  268 (* NOT *);
  269 (* EQ *);
  270 (* NEQ *);
  271 (* LT *);
  272 (* LEQ *);
  273 (* GT *);
  274 (* GEQ *);
  275 (* TRUE *);
  276 (* FALSE *);
  277 (* AND *);
  278 (* OR *);
  279 (* RETURN *);
  280 (* RETURNS *);
  281 (* IF *);
  282 (* ELSE *);
  283 (* FOR *);
  284 (* WHILE *);
  285 (* INT *);
  286 (* FLOAT *);
  287 (* BOOL *);
  288 (* VOID *);
  289 (* STRING *);
  294 (* FUNCTION *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  290 (* LITERAL *);
  291 (* FLOATLIT *);
  292 (* STRINGLIT *);
  293 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\005\000\005\000\006\000\006\000\
\003\000\009\000\009\000\004\000\010\000\010\000\011\000\011\000\
\008\000\008\000\008\000\008\000\008\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\013\000\013\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\014\000\014\000\
\015\000\015\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\000\000\001\000\001\000\002\000\
\003\000\000\000\002\000\009\000\000\000\001\000\002\000\004\000\
\001\000\001\000\001\000\001\000\001\000\002\000\002\000\003\000\
\003\000\005\000\007\000\009\000\005\000\000\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\002\000\002\000\003\000\004\000\003\000\000\000\001\000\
\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\059\000\000\000\017\000\018\000\019\000\020\000\
\021\000\001\000\003\000\004\000\000\000\000\000\009\000\000\000\
\000\000\000\000\000\000\015\000\000\000\000\000\010\000\000\000\
\000\000\016\000\000\000\000\000\000\000\000\000\035\000\036\000\
\000\000\000\000\000\000\000\000\032\000\033\000\034\000\000\000\
\011\000\000\000\007\000\000\000\000\000\000\000\000\000\050\000\
\051\000\023\000\000\000\000\000\000\000\000\000\000\000\000\000\
\012\000\008\000\000\000\022\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\054\000\025\000\024\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\040\000\041\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\053\000\000\000\000\000\000\000\029\000\000\000\
\000\000\000\000\027\000\000\000\000\000\028\000"

let yydgoto = "\002\000\
\003\000\004\000\011\000\012\000\000\000\042\000\043\000\013\000\
\025\000\018\000\019\000\045\000\078\000\081\000\082\000"

let yysindex = "\010\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\249\254\021\255\000\000\233\255\
\252\254\051\255\058\255\000\000\062\255\233\255\000\000\020\255\
\057\255\000\000\124\255\201\255\124\255\124\255\000\000\000\000\
\012\255\066\255\072\255\073\255\000\000\000\000\000\000\006\255\
\000\000\093\255\000\000\041\255\004\000\194\000\129\255\000\000\
\000\000\000\000\028\000\124\255\124\255\124\255\124\255\124\255\
\000\000\000\000\080\255\000\000\124\255\124\255\124\255\124\255\
\124\255\124\255\124\255\124\255\124\255\124\255\124\255\124\255\
\000\000\000\000\000\000\210\000\242\000\082\255\226\000\242\000\
\096\255\090\255\242\000\053\255\053\255\000\000\000\000\029\001\
\029\001\070\000\070\000\070\000\070\000\017\001\002\001\201\255\
\124\255\201\255\000\000\124\255\074\255\046\000\000\000\242\000\
\201\255\124\255\000\000\100\255\201\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\103\255\
\000\000\000\000\105\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\238\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\108\255\000\000\107\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\004\255\000\000\000\000\009\255\
\000\000\114\255\049\255\068\000\090\000\000\000\000\000\101\255\
\173\255\112\000\134\000\156\000\178\000\209\255\050\255\000\000\
\000\000\000\000\000\000\000\000\165\255\000\000\000\000\015\255\
\000\000\116\255\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\086\000\000\000\000\000\096\000\218\255\250\255\
\000\000\000\000\000\000\229\255\019\000\000\000\000\000"

let yytablesize = 559
let yytable = "\046\000\
\010\000\048\000\049\000\058\000\031\000\051\000\031\000\055\000\
\058\000\017\000\001\000\057\000\050\000\027\000\057\000\024\000\
\056\000\058\000\044\000\029\000\058\000\015\000\016\000\030\000\
\076\000\077\000\079\000\080\000\083\000\014\000\031\000\032\000\
\020\000\084\000\085\000\086\000\087\000\088\000\089\000\090\000\
\091\000\092\000\093\000\094\000\095\000\037\000\038\000\039\000\
\040\000\052\000\049\000\052\000\049\000\021\000\052\000\049\000\
\026\000\101\000\027\000\103\000\028\000\063\000\064\000\022\000\
\029\000\023\000\107\000\052\000\030\000\102\000\110\000\049\000\
\104\000\053\000\054\000\031\000\032\000\059\000\077\000\033\000\
\015\000\034\000\097\000\035\000\036\000\005\000\006\000\007\000\
\008\000\009\000\037\000\038\000\039\000\040\000\027\000\100\000\
\028\000\057\000\099\000\105\000\029\000\042\000\109\000\042\000\
\030\000\013\000\042\000\014\000\030\000\055\000\041\000\031\000\
\032\000\042\000\042\000\033\000\056\000\034\000\030\000\035\000\
\036\000\042\000\042\000\047\000\108\000\027\000\037\000\038\000\
\039\000\040\000\027\000\029\000\028\000\074\000\000\000\030\000\
\029\000\000\000\000\000\000\000\030\000\000\000\031\000\032\000\
\000\000\000\000\000\000\031\000\032\000\000\000\000\000\033\000\
\000\000\034\000\000\000\035\000\036\000\037\000\038\000\039\000\
\040\000\000\000\037\000\038\000\039\000\040\000\026\000\000\000\
\026\000\026\000\000\000\000\000\026\000\043\000\000\000\043\000\
\026\000\000\000\043\000\000\000\000\000\000\000\000\000\026\000\
\026\000\043\000\043\000\026\000\000\000\026\000\000\000\026\000\
\026\000\043\000\043\000\000\000\000\000\000\000\026\000\026\000\
\026\000\026\000\027\000\000\000\028\000\000\000\000\000\000\000\
\029\000\048\000\000\000\048\000\030\000\000\000\048\000\000\000\
\000\000\000\000\000\000\031\000\032\000\000\000\000\000\033\000\
\000\000\034\000\000\000\035\000\036\000\048\000\048\000\000\000\
\000\000\000\000\037\000\038\000\039\000\040\000\037\000\000\000\
\037\000\000\000\000\000\037\000\037\000\037\000\037\000\037\000\
\000\000\000\000\037\000\037\000\037\000\037\000\037\000\037\000\
\000\000\000\000\037\000\037\000\060\000\005\000\006\000\007\000\
\008\000\009\000\061\000\062\000\063\000\064\000\000\000\000\000\
\065\000\066\000\067\000\068\000\069\000\070\000\000\000\000\000\
\071\000\072\000\000\000\000\000\075\000\005\000\006\000\007\000\
\008\000\009\000\061\000\062\000\063\000\064\000\000\000\000\000\
\065\000\066\000\067\000\068\000\069\000\070\000\106\000\000\000\
\071\000\072\000\000\000\000\000\061\000\062\000\063\000\064\000\
\000\000\000\000\065\000\066\000\067\000\068\000\069\000\070\000\
\000\000\000\000\071\000\072\000\038\000\000\000\038\000\000\000\
\000\000\038\000\038\000\038\000\061\000\062\000\063\000\064\000\
\038\000\038\000\038\000\038\000\038\000\038\000\000\000\000\000\
\038\000\038\000\039\000\000\000\039\000\000\000\000\000\039\000\
\039\000\039\000\000\000\000\000\000\000\000\000\039\000\039\000\
\039\000\039\000\039\000\039\000\000\000\000\000\039\000\039\000\
\044\000\000\000\044\000\000\000\000\000\044\000\000\000\000\000\
\000\000\000\000\000\000\000\000\044\000\044\000\044\000\044\000\
\044\000\044\000\000\000\000\000\044\000\044\000\045\000\000\000\
\045\000\000\000\000\000\045\000\000\000\000\000\000\000\000\000\
\000\000\000\000\045\000\045\000\045\000\045\000\045\000\045\000\
\000\000\000\000\045\000\045\000\046\000\000\000\046\000\000\000\
\000\000\046\000\000\000\000\000\000\000\000\000\000\000\000\000\
\046\000\046\000\046\000\046\000\046\000\046\000\000\000\000\000\
\046\000\046\000\047\000\000\000\047\000\000\000\000\000\047\000\
\000\000\000\000\000\000\000\000\000\000\000\000\047\000\047\000\
\047\000\047\000\047\000\047\000\073\000\000\000\047\000\047\000\
\061\000\062\000\063\000\064\000\000\000\000\000\065\000\066\000\
\067\000\068\000\069\000\070\000\096\000\000\000\071\000\072\000\
\061\000\062\000\063\000\064\000\000\000\000\000\065\000\066\000\
\067\000\068\000\069\000\070\000\098\000\000\000\071\000\072\000\
\061\000\062\000\063\000\064\000\000\000\000\000\065\000\066\000\
\067\000\068\000\069\000\070\000\000\000\000\000\071\000\072\000\
\061\000\062\000\063\000\064\000\000\000\000\000\065\000\066\000\
\067\000\068\000\069\000\070\000\000\000\000\000\071\000\072\000\
\061\000\062\000\063\000\064\000\000\000\000\000\065\000\066\000\
\067\000\068\000\069\000\070\000\000\000\000\000\071\000\061\000\
\062\000\063\000\064\000\000\000\000\000\065\000\066\000\067\000\
\068\000\069\000\070\000\061\000\062\000\063\000\064\000\000\000\
\000\000\000\000\000\000\067\000\068\000\069\000\070\000"

let yycheck = "\027\000\
\000\000\029\000\030\000\042\000\001\001\033\000\003\001\002\001\
\047\000\016\000\001\000\003\001\001\001\002\001\006\001\022\000\
\011\001\003\001\025\000\008\001\006\001\001\001\002\001\012\001\
\052\000\053\000\054\000\055\000\056\000\037\001\019\001\020\001\
\037\001\061\000\062\000\063\000\064\000\065\000\066\000\067\000\
\068\000\069\000\070\000\071\000\072\000\034\001\035\001\036\001\
\037\001\001\001\001\001\003\001\003\001\003\001\006\001\006\001\
\037\001\096\000\002\001\098\000\004\001\009\001\010\001\006\001\
\008\001\004\001\105\000\002\001\012\001\097\000\109\000\022\001\
\100\000\002\001\002\001\019\001\020\001\037\001\106\000\023\001\
\001\001\025\001\001\001\027\001\028\001\029\001\030\001\031\001\
\032\001\033\001\034\001\035\001\036\001\037\001\002\001\006\001\
\004\001\005\001\003\001\026\001\008\001\001\001\003\001\003\001\
\012\001\003\001\006\001\003\001\001\001\003\001\025\000\019\001\
\020\001\013\001\014\001\023\001\003\001\025\001\003\001\027\001\
\028\001\021\001\022\001\028\000\106\000\002\001\034\001\035\001\
\036\001\037\001\002\001\008\001\004\001\005\001\255\255\012\001\
\008\001\255\255\255\255\255\255\012\001\255\255\019\001\020\001\
\255\255\255\255\255\255\019\001\020\001\255\255\255\255\023\001\
\255\255\025\001\255\255\027\001\028\001\034\001\035\001\036\001\
\037\001\255\255\034\001\035\001\036\001\037\001\002\001\255\255\
\004\001\005\001\255\255\255\255\008\001\001\001\255\255\003\001\
\012\001\255\255\006\001\255\255\255\255\255\255\255\255\019\001\
\020\001\013\001\014\001\023\001\255\255\025\001\255\255\027\001\
\028\001\021\001\022\001\255\255\255\255\255\255\034\001\035\001\
\036\001\037\001\002\001\255\255\004\001\255\255\255\255\255\255\
\008\001\001\001\255\255\003\001\012\001\255\255\006\001\255\255\
\255\255\255\255\255\255\019\001\020\001\255\255\255\255\023\001\
\255\255\025\001\255\255\027\001\028\001\021\001\022\001\255\255\
\255\255\255\255\034\001\035\001\036\001\037\001\001\001\255\255\
\003\001\255\255\255\255\006\001\007\001\008\001\009\001\010\001\
\255\255\255\255\013\001\014\001\015\001\016\001\017\001\018\001\
\255\255\255\255\021\001\022\001\001\001\029\001\030\001\031\001\
\032\001\033\001\007\001\008\001\009\001\010\001\255\255\255\255\
\013\001\014\001\015\001\016\001\017\001\018\001\255\255\255\255\
\021\001\022\001\255\255\255\255\001\001\029\001\030\001\031\001\
\032\001\033\001\007\001\008\001\009\001\010\001\255\255\255\255\
\013\001\014\001\015\001\016\001\017\001\018\001\001\001\255\255\
\021\001\022\001\255\255\255\255\007\001\008\001\009\001\010\001\
\255\255\255\255\013\001\014\001\015\001\016\001\017\001\018\001\
\255\255\255\255\021\001\022\001\001\001\255\255\003\001\255\255\
\255\255\006\001\007\001\008\001\007\001\008\001\009\001\010\001\
\013\001\014\001\015\001\016\001\017\001\018\001\255\255\255\255\
\021\001\022\001\001\001\255\255\003\001\255\255\255\255\006\001\
\007\001\008\001\255\255\255\255\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\255\255\255\255\021\001\022\001\
\001\001\255\255\003\001\255\255\255\255\006\001\255\255\255\255\
\255\255\255\255\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\255\255\255\255\021\001\022\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\255\255\255\255\255\255\
\255\255\255\255\013\001\014\001\015\001\016\001\017\001\018\001\
\255\255\255\255\021\001\022\001\001\001\255\255\003\001\255\255\
\255\255\006\001\255\255\255\255\255\255\255\255\255\255\255\255\
\013\001\014\001\015\001\016\001\017\001\018\001\255\255\255\255\
\021\001\022\001\001\001\255\255\003\001\255\255\255\255\006\001\
\255\255\255\255\255\255\255\255\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\003\001\255\255\021\001\022\001\
\007\001\008\001\009\001\010\001\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\003\001\255\255\021\001\022\001\
\007\001\008\001\009\001\010\001\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\003\001\255\255\021\001\022\001\
\007\001\008\001\009\001\010\001\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\255\255\255\255\021\001\022\001\
\007\001\008\001\009\001\010\001\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\255\255\255\255\021\001\022\001\
\007\001\008\001\009\001\010\001\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\255\255\255\255\021\001\007\001\
\008\001\009\001\010\001\255\255\255\255\013\001\014\001\015\001\
\016\001\017\001\018\001\007\001\008\001\009\001\010\001\255\255\
\255\255\255\255\255\255\015\001\016\001\017\001\018\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  ASSIGN\000\
  NOT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  RETURN\000\
  RETURNS\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  FLOAT\000\
  BOOL\000\
  VOID\000\
  STRING\000\
  FUNCTION\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  FLOATLIT\000\
  STRINGLIT\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 35 "parser.mly"
            ( _1 )
# 366 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parser.mly"
                        ([],[])
# 372 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decl) in
    Obj.repr(
# 39 "parser.mly"
                        ((_2 :: fst _1), snd _1)
# 380 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 40 "parser.mly"
                        (fst _1, (_2 :: snd _1))
# 388 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser.mly"
                        ( [] )
# 394 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 45 "parser.mly"
                        ( List.rev _1 )
# 401 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 48 "parser.mly"
                        ( [_1] )
# 408 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 49 "parser.mly"
                        ( _2 :: _1 )
# 416 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 52 "parser.mly"
                        ( (_1, _2) )
# 424 "parser.ml"
               : 'var_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
                        ([])
# 430 "parser.ml"
               : 'var_decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'var_decl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decl) in
    Obj.repr(
# 56 "parser.mly"
                         (_2 :: _1)
# 438 "parser.ml"
               : 'var_decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'var_decl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 60 "parser.mly"
     ( { 
	 ftyp = _1;
	 fname = _2;
	 formals = _4;
	 locals = List.rev _7;
	 body = List.rev _8
    } )
# 455 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parser.mly"
                  ( [] )
# 461 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 70 "parser.mly"
                  ( List.rev _1 )
# 468 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 73 "parser.mly"
                               ( [(_1, _2)] )
# 476 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 74 "parser.mly"
                             ( (_3, _4) :: _1 )
# 485 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 77 "parser.mly"
        ( Int )
# 491 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "parser.mly"
          ( Float )
# 497 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 79 "parser.mly"
         ( Bool )
# 503 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
         ( Void )
# 509 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "parser.mly"
           ( String )
# 515 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
              ( Expr _1 )
# 522 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 85 "parser.mly"
                ( Return Noexpr )
# 528 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
                     ( Return _2 )
# 535 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 87 "parser.mly"
                            ( Block(List.rev _2) )
# 542 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 88 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 550 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 89 "parser.mly"
                                            ( If(_3, _5, _7) )
# 559 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 91 "parser.mly"
     ( For(_3, _5, _7, _9) )
# 569 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 92 "parser.mly"
                                  ( While(_3, _5) )
# 577 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 95 "parser.mly"
                  ( Noexpr )
# 583 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                  ( _1 )
# 590 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 99 "parser.mly"
                     ( Literal(_1) )
# 597 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 100 "parser.mly"
                     ( FloatLit(_1) )
# 604 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 101 "parser.mly"
                     ( StringLit(_1) )
# 611 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
                     ( BoolLit(true) )
# 617 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "parser.mly"
                     ( BoolLit(false) )
# 623 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 104 "parser.mly"
                     ( Id(_1) )
# 630 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 638 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 646 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 654 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 662 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 670 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 678 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 686 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 694 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 702 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 710 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 718 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 726 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 117 "parser.mly"
                         ( Unop(Neg, _2) )
# 733 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                     ( Unop(Not, _2) )
# 740 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                     ( Assign(_1, _3) )
# 748 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 120 "parser.mly"
                                 ( Call(_1, _3) )
# 756 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 121 "parser.mly"
                       ( _2 )
# 763 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 124 "parser.mly"
                  ( [] )
# 769 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 125 "parser.mly"
                  ( List.rev _1 )
# 776 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 128 "parser.mly"
                            ( [_1] )
# 783 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 129 "parser.mly"
                            ( _3 :: _1 )
# 791 "parser.ml"
               : 'actuals_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)