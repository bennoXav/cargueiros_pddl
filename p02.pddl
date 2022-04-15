(define (problem p01)

(:domain cargueiros)

(:objects n01 - navio
		  p01 - porto p02 - porto p03 - porto p04 - porto
		  c01 - container c02 - container c03 - container)
(:init 
	(nno_Porto n01 p01)
	
	(containerNoNavio c01 n01)
	(baseOcupada n01)
	(not (container_livre c01))
	(cEmCimaDe c02 c01)
	(cEmCimaDe c03 c02)
	(not (container_livre c02))
	(container_livre c03)
	
	(existeRota p01 p02)
	(= (distancia p01 p02) 5)
	(existeRota p01 p03)
	(= (distancia p01 p03) 5)
	(existeRota p02 p03)
	(= (distancia p02 p03) 3)
	(existeRota p03 p04)
	(= (distancia p03 p04) 20)
	
	(existeRota p02 p01)
	(= (distancia p02 p01) 5)
	(existeRota p03 p01)
	(= (distancia p03 p01) 5)
	(existeRota p03 p02)
	(= (distancia p03 p02) 3)
	(existeRota p04 p03)
	(= (distancia p04 p03) 20)
	
	
	
	(= (total-cost) 0))

(:goal
(and 
	 (cno_Porto c03 p04)
	 (cno_Porto c02 p03)
	 (cno_Porto c01 p02)
	 
	
))

(:metric minimize (total-cost))

)