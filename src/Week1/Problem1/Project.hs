module Week1.Problem1.Project where

import Clash.Prelude

{-# ANN comparator2
  (Synthesize
    { t_name   = "comparator2"
    , t_inputs = [ PortName "A"
                 , PortName "B"
                 ]
    , t_output = PortName "Equals"
    }
   ) 
  #-}
comparator2
 :: "A" ::: BitVector 2
 -> "B" ::: BitVector 2
 -> "Equals" ::: Bit
comparator2 a b = 
  if a == b then high else low