(define (problem p03)

(:domain cargueiros)

(:objects n01 - navio
		  pa - porto pb - porto pc - porto pd - porto
		  cb - container cc - container cd - container)
(:init 
	(nno_Porto n01 pa)
	
	(containerNoNavio cb n01)
	(baseOcupada n01)
	(not (container_livre cb))
	(cEmCimaDe cc cb)
	(cEmCimaDe cd cc)
	(not (container_livre cc))
	(container_livre cd)
	
	(existeRota pa pb)
	(= (distancia pa pb) 5)
	(existeRota pa pc)
	(= (distancia pa pc) 7)
	(existeRota pb pc)
	(= (distancia pb pc) 4)
	(existeRota pb pd)
	(= (distancia pb pd) 10)
  (existeRota pc pd)
	(= (distancia pc pd) 6)
	
	(existeRota pb pa)
	(= (distancia pb pa) 5)
	(existeRota pc pa)
	(= (distancia pc pa) 7)
	(existeRota pc pb)
	(= (distancia pc pb) 4)
	(existeRota pd pb)
	(= (distancia pd pb) 10)
  (existeRota pd pc)
	(= (distancia pd pc) 6)
	
	
	
	(= (total-cost) 0))

(:goal
(and 
	 (cno_Porto cb pb)
	 (cno_Porto cc pc)
	 (cno_Porto cd pd)
	 
	
))

(:metric minimize (total-cost))

)
