safetail ns = if length ns == 0 then [] 
              else tail ns 

safetail' ns | length ns == 0 = []
             | otherwise = tail ns

safetail'' [] = []
safetail'' (_:ns) = ns

safetail''' ns | null ns  = []
               | otherwise = tail ns

False ||| False = False
_ ||| _ = True

a &&& b = if a /= b then False else
            if not a then False
              else True

a &&&& b | a = b
         | not a = False
