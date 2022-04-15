(define (problem p01)

(:domain cargueiros)

(:objects n01 - navio
		  p01 - porto p02 - porto p03 - porto
		  c01 - container c02 - container c03 - container)
(:init 
	(nno_Porto n01 p01)
	
	(containerNoNavio c01 n01)
	(baseOcupada n01)
	(container_livre c02)
	(not (container_livre c01))
	(cEmCimaDe c02 c01)
	(cno_Porto c03 p03)
	(existeRota p01 p02)
	(= (distancia p01 p02) 5)
	(existeRota p02 p03)
	(= (distancia p02 p03) 10)
	(existeRota p02 p01)
	(= (distancia p02 p01) 5)
	(existeRota p03 p02)
	(= (distancia p03 p02) 10)
	
	(= (total-cost) 0))

(:goal
(and 
	 (cno_Porto c03 p01)
	 (cno_Porto c02 p03)
	 (cno_Porto c01 p02)
	 
	
))

(:metric minimize (total-cost))

)