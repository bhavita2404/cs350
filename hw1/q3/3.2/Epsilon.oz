declare
fun {Abs Num}
   if Num < 0.0 then ~Num
   else Num
   end
end
fun {Sum Xs Num}
   case Xs of nil then Num
   [] X|Xr then {Sum Xr (Num+X)}
   end
end
fun {SinEpsi Xs Prev Epsilon}
   case Xs of nil then nil
   [] X|Xr then
      if {Abs (X - Prev)} =< Epsilon then (X|{SinEpsi Xr X Epsilon})
      else nil
      end
   end
end
fun {Approximate Xs Epsilon}
   case Xs of nil then 0.0
   [] X|Xr then {Sum (X|{SinEpsi Xr X Epsilon}) 0.0}
   end
end
