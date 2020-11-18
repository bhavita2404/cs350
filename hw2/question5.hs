compose_multiple:: [t -> t] -> t -> t

compose_multiple [] a = a
compose_multiple [x] a = (x a)
compose_multiple (x:xs) a =  (x (compose_multiple xs a))



