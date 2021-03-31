module Week1.Problem4.Project where

import Clash.Prelude

{-# ANN fullAdd
   (Synthesize
      { t_name   = "FullAdd"
      , t_inputs =
          [ PortName "A"
          , PortName "B"
          , PortName "Cin"
          ]
      , t_output = PortProduct ""
          [ PortName "Sum"
          , PortName "Cout"
          ]
       }
   )
 #-}


fullAdd
  :: Bit
  -> Bit
  -> Bit
  -> ( "Sum" ::: Bit
     , "Cout" ::: Bit
     )
fullAdd a b cIn =
  let s = cIn `xor` (a `xor` b)
      cOut = (a * b) + (cIn * a) + (cIn * b)
  in (s,cOut)