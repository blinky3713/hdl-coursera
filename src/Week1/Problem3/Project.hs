module Week1.Problem3.Project where

import Clash.Prelude

{-# ANN majority
  (Synthesize
    { t_name   = "Majority"
    , t_inputs = [ PortName "A"
                 , PortName "B"
                 , PortName "C"
                 ]
    , t_output = PortName "Y"
    }
   ) 
  #-}

majority
 :: "A" ::: Bit
 -> "B" ::: Bit
 -> "C" ::: Bit
 -> "Y" ::: Bit
majority a b c = 
  if toInteger a + toInteger b + toInteger c >= 2
      then high
      else low