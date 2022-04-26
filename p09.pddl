(define (problem p03)

(:domain cargueiros)

(:objects n01 - navio n02 - navio
		  pa - porto pb - porto pc - porto pd - porto pe - porto pf - porto pg - porto ph - porto
		  cb - container cc - container cd - container ce - container ch - container  ca02 - container cb02 - container cc02 - container cg02 - container ch02 - container)
(:init 

	
	
	;; [h, e, d]
	(nno_Porto n01 pa)
	(containerNoNavio ch n01)
	(baseOcupada n01)
	
	(not (container_livre ch))
	(cEmCimaDe ce ch)
	
	(not (container_livre ce))
	(cEmCimaDe cd ce)
	
	(container_livre cd)
	
	(cnn ch n01)
	(cnn ce n01)
	(cnn cd n01)
	
	
	
	;; [b, c]
	(nno_Porto n02 ph)
	
	(containerNoNavio cc n02)
	(baseOcupada n02)
	
	(not (container_livre cc))
	(cEmCimaDe cb cc)
	
	(container_livre cb)
	
	(cnn cb n02)
	(cnn cc n02)
	

	
	
	(cno_Porto cc02 pe)
	(not (container_livre cc02))
	
	(cno_Porto cb02 pf)
	(not (container_livre cb02))

	(cno_Porto ca02 pg)
	(not (container_livre ca02))

	(cno_Porto cg02 pd)
	(not (container_livre cg02))


	

	
	
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
	 (cno_Porto cd pd)
	 (cno_Porto ce pe)
	 (cno_Porto ch ph)
	 
	
	 (cno_Porto ca02 pa)
	 (cno_Porto cb02 pb)
	 (cno_Porto cc02 pc)
	 (cno_Porto cg02 pg)
	
	
))

(:metric minimize (total-cost))

)
	