(define (problem p03)

(:domain cargueiros)

(:objects n01 - navio
		  pa - porto pb - porto pc - porto pd - porto pe - porto pf - porto
		  ca - container cb - container cc - container ce - container cf - container)
(:init 
	(nno_Porto n01 pa)
	
	;;pilha de containers no barco [cc, cf]
	(containerNoNavio cc n01)
	(baseOcupada n01)
	(not (container_livre cc))
	(cEmCimaDe cf cc)
	(container_livre cf)
	
	(cnn cf n01)
	(cnn cc n01)
	
	(not (container_livre cb) )
	(cno_Porto cb pf)
	(not (container_livre ce) )
	(cno_Porto ce pc)
	(not (container_livre ca) )
	(cno_Porto ca pe)
	
	
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
	
	
	(= (total-cost) 0))

(:goal
(and 
	 (cno_Porto ca pa)
	 (cno_Porto cb pb)
	 (cno_Porto cc pc)
	 (cno_Porto ce pe)
	 (cno_Porto cf pf)
	 
	
))

(:metric minimize (total-cost))

)
	
	