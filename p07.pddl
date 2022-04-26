(define (problem p03)

(:domain cargueiros)

(:objects n01 - navio n02 - navio
		  pa - porto pb - porto pc - porto pd - porto pe - porto pf - porto
		  ca - container cb01 - container cb02 - container cc - container ce - container cf - container)
(:init 
	(nno_Porto n01 pa)
	(nno_Porto n02 pe)
	
	;;pilha de containers no barco [cc, cf]
	(containerNoNavio cc n01)
	(baseOcupada n01)
	(not (container_livre cc))
	(containerNoNavio cf n01)
	(cEmCimaDe cf cc)
	(container_livre cf)
	(cnn cc n01)
	(cnn cf n01)

	(containerNoNavio cb01 n02)
	(baseOcupada n02)
	(not (container_livre cb01))
	(containerNoNavio ca n02)
	(cEmCimaDe ca cb01)
	(container_livre ca)
	
	(cnn cb01 n02)
	(cnn ca n02)
	
	
	(cno_Porto cb02 pf)
	(not (container_livre cb02))
	(cno_Porto ce pc)
	(not (container_livre ce))
	
	
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
	 (cno_Porto cb01 pb)
	 (cno_Porto cb02 pb)
	 (cno_Porto cc pc)
	 (cno_Porto ce pe)
	 (cno_Porto cf pf)
	 
	
))

(:metric minimize (total-cost))

)
	
	