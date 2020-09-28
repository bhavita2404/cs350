declare
fun {Take N L}
   if N < 1 then nil
   else if L == nil then nil
	else L.1 | {Take (N-1) L.2}
	end
   end
end
