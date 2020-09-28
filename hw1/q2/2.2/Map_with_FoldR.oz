declare
fun {Func F}
   fun {$ X Y}
      {F X}|Y
   end
end   
fun {FoldR Xs F I}
   case Xs
   of nil then I
   [] H|T then {F H {FoldR T F I}}
   end
end
fun {Map Xs F}
   {FoldR Xs {Func F} nil} 
end
