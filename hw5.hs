data ExprT = Lit Integer
| Add ExprT ExprT
| Mul ExprT ExprT
deriving (Add, Mul)

instance Add ExprT where
   (F i1) == (F i2) =  i1 + i2

instance Mul ExprT where
    (F i1) == (F i2) =  i1 * i2
