(define (problem p01)

(:domain cargueiros)

(:objects n01 - navio n02 - navio
		  pa - porto pb - porto pc - porto
		  ca - container cb - container cc - container)
(:init 
	(nno_Porto n01 pc)
	(nno_Porto n02 pa)
	
	(baseOcupada n01)
	
	(containerNoNavio cb n01)
	(not(container_livre cb))
	
	(container_livre ca)
	
	(cEmCimaDe ca cb)
	(containerNoNavio ca n01)
	
	(cnn ca n01)
	(cnn cb n01)
	
	(containerNoNavio cc n02)
	(baseOcupada n02)
	(container_livre cc)
	
	(cnn cc n02)
	
	(existeRota pa pb)
	(= (distancia pa pb) 5)
	(existeRota pb pc)
	(= (distancia pb pc) 10)
	(existeRota pb pa)
	(= (distancia pb pa) 5)
	(existeRota pc pb)
	(= (distancia pc pb) 10)
	
	(= (total-cost) 0))

(:goal
(and 
	 (cno_Porto ca pa)
	 (cno_Porto cc pc)
	 (cno_Porto cb pb)
	 
	
))

(:metric minimize (total-cost))

)