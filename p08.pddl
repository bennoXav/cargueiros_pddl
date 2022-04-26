(define (problem p03)

(:domain cargueiros)

(:objects n01 - navio n02 - navio
		  pa - porto pb - porto pc - porto pd - porto pe - porto pf - porto pg - porto ph - porto
		  cb - container cc - container ce - container cg - container ch - container)
(:init 

	;;containers b c e g h
	(nno_Porto n01 pa)
	
	(nno_Porto n02 pg)
	
	;;ambos barcos começam vazios
	
	(cno_Porto cb pf)
	(not (container_livre cb))
	
	(cno_Porto cc pc)
	(not (container_livre cc))
	
	(cno_Porto ce pc)
	(not (container_livre ce))
	
	(cno_Porto cg pd)
	(not (container_livre cg))
	
	(cno_Porto ch pb)
	(not (container_livre ch))
	
	
	
	
	;;porto a para porto b
	(existeRota pa pb)
	(= (distancia pa pb) 5)
	(existeRota pb pa)
	(= (distancia pb pa) 5)
	
	;;porto a para porto c
	(existeRota pa pc)
	(= (distancia pa pc) 7)
	(existeRota pc pa)
	(= (distancia pc pa) 7)
	
	;;porto b para porto c
	(existeRota pb pc)
	(= (distancia pb pc) 4)
	(existeRota pc pb)
	(= (distancia pc pb) 4)
	
	;;porto b para porto d
	(existeRota pb pd)
	(= (distancia pb pd) 10)
	(existeRota pd pb)
	(= (distancia pd pb) 10)
	
	;;porto c para porto d
	(existeRota pc pd)
	(= (distancia pc pd) 6)
	(existeRota pc pd)
	(= (distancia pc pd) 6)
	
	;;porto c para porto f
	(existeRota pc pf)
	(= (distancia pc pf) 15)
	(existeRota pf pc)
	(= (distancia pf pc) 15)
	
	;;porto d para porto f
	(existeRota pd pf)
	(= (distancia pd pf) 8)
	(existeRota pf pd)
	(= (distancia pf pd) 8)
	
	;;porto d para porto e
	(existeRota pd pe)
	(= (distancia pd pe) 8)
	(existeRota pe pd)
	(= (distancia pe pd) 8)
	
	;;porto f para porto e
	(existeRota pf pe)
	(= (distancia pf pe) 7)
	(existeRota pe pf)
	(= (distancia pe pf) 7)
	
	;;porto e para porto g
	(existeRota pe pg)
	(= (distancia pe pg) 11)
	(existeRota pg pe)
	(= (distancia pg pe) 11)
	
	;;porto f para porto g
	(existeRota pf pg)
	(= (distancia pf pg) 9)
	(existeRota pg pf)
	(= (distancia pg pf) 9)
	
	;;porto f para porto h
	(existeRota pf ph)
	(= (distancia pf ph) 5)
	(existeRota ph pf)
	(= (distancia ph pf) 5)
	
	
	(= (total-cost) 0))

(:goal
(and 
	 (cno_Porto cb pb)
	 (cno_Porto cc pc)
	 (cno_Porto ce pe)
	 (cno_Porto cg pg)
	 (cno_Porto ch ph)
	 
	
))

(:metric minimize (total-cost))

)
	