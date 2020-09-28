declare
fun {ListLeng L}
   case L
   of nil then 0
   else 1 + {ListLeng L.2}
   end
end
fun {ListLast P L}
   case L
   of nil then nil
   else
      if P < 1 then L
      else {ListLast (P-1) L.2}
      end
   end
end
fun {Last N L}
   if N < 1 then nil
   else {ListLast ({ListLeng L} - N) L}
   end
end
