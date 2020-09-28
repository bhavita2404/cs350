declare
fun lazy {SinFind N Term X}
   Term | {SinFind N+1.0 (~1.0*Term*X*X)/((2.0*N)*(2.0*N + 1.0)) X}
end
fun {Sin X}
   {SinFind 1.0 X X}
end
