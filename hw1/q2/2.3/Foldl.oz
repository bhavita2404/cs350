declare
fun {FoldL Xs F I}
   case Xs
   of nil then I
   [] X|Xr then {FoldL Xr F {F I X} }
   end
end
