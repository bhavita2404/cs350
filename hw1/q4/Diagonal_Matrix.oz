declare
fun {RowFind L I Num} % finds if all the elements apart from diagonal are 0 %
   case L of nil then true
   [] L1|L2 then
      if (Num == I) then {RowFind L2 I (Num+1)}
      elseif (L1 == 0) then {RowFind L2 I (Num+1)}
      else false
      end
   end
end
fun {RowCheck Y Xs I} % applies recursive row check for all rows %
   case Xs of nil then {RowFind Y I 0}
   [] X|Xr then {RowFind Y I 0} andthen {RowCheck X Xr (I+1)}
   end
end
fun {IsDiagonal Matrix}
   case Matrix
   of X|Xr then {RowCheck X Xr 0}
   else true
   end
end % Assumed to be a square matrix always %

