declare
fun {ZipWith BinOp Xs Ys}
   case Xs#Ys
   of nil#nil then nil
   [] _#nil then nil
   [] nil#_ then nil
   [] (X|Xr)#(Y|Yr) then {BinOp X Y}|{ZipWith BinOp Xr Yr}
   end
end
