(define (domain cargueiros)
	(:requirements :strips :equality :typing :adl :action-costs )
	(:types navio container porto)
	(:predicates 
		(navegar ?navio - navio ?origem - porto ?destino -porto) 
		(descarregarDoNavio ?container - container ?navio - navio ?porto - porto)
		(descarregarDoContainer ?container - container ?navio - navio ?containerL - container ?porto - porto)
		(carregarParaContainer ?container - container ?navio - navio ?containerL - container ?porto - porto)
		(carregarParaNavio ?container - container ?navio - navio ?porto - porto)
		(nno_Porto ?navio - navio ?porto - porto)
		(cno_Porto ?container - container ?porto - porto)
		(navio_livre ?navio - navio)
		(container_livre ?container - container)
		(containerNoNavio ?container - container ?navio - navio)
		(cEmCimaDe ?containerT - container ?containerB - container)
		(existeRota ?origem - porto ?destino - porto)
		(baseOcupada ?navio - navio)
		(cnn ?container - container ?navio - navio)
		)
	
	(:functions
		(distancia ?origem ?destino)
    (total-cost))
	
	
	(:action navegar 
				:parameters (?navio - navio ?origem - porto ?destino - porto)
				:precondition (
				and (nno_Porto ?navio ?origem) 
					(not (nno_Porto ?navio ?destino))
					(existeRota ?origem ?destino)
					)
				:effect (
				and (not (nno_Porto ?navio ?origem)) 
						(nno_Porto ?navio ?destino) 
						(increase (total-cost) (distancia ?origem ?destino))
				)
		
	)
	
	(:action descarregarDoNavio
				:parameters (?container - container ?navio - navio ?porto - porto)
				:precondition (
				and (containerNoNavio ?container ?navio)
					(container_livre ?container)
					(baseOcupada ?navio)
					(nno_Porto ?navio ?porto)
					(cnn ?container ?navio)
				)
				:effect (
				and (not (container_livre ?container) )
					(not (containerNoNavio ?container ?navio))
					(cno_Porto ?container ?porto)
					(not (baseOcupada ?navio))
					(not(cnn ?container ?navio))
					(increase (total-cost) 6)
				
				)
	)
	
	(:action descarregarDeContainer
				:parameters (?container - container ?navio - navio ?containerL - container?porto - porto)
				:precondition (
				and (container_livre ?container)
					(cEmCimaDe ?container ?containerL)
					(nno_Porto ?navio ?porto)
					(cnn ?container ?navio)
					(cnn ?containerL ?navio)
					
				)
				:effect (
				and (not (container_livre ?container) )
					(container_livre ?containerL)
					(not (cEmCimaDe ?container ?containerL))
					(cno_Porto ?container ?porto)
					(not (cnn ?container ?navio))
					(increase (total-cost) 6)
				
				)
	)
	
	(:action carregarParaNavio
				:parameters (?container - container ?navio - navio ?porto - porto)
				:precondition (
				and (not (containerNoNavio ?container ?navio))
					(not (container_livre ?container))
					(cno_Porto ?container ?porto)
					(nno_Porto ?navio ?porto)
					(not (baseOcupada ?navio))
					(not(cnn ?container ?navio))
				)
				:effect (
				and (container_livre ?container) 
					(containerNoNavio ?container ?navio)
					(not(cno_Porto ?container ?porto))
					(baseOcupada ?navio)
					(cnn ?container ?navio)
					(increase (total-cost) 3)
				
				)
	)
	
	
	(:action carregarParaContainer
				:parameters (?container - container ?navio - navio ?containerL - container?porto - porto)
				:precondition (
				and (container_livre ?containerL)
					(nno_Porto ?navio ?porto)
					(cno_Porto ?container ?porto)
					(not(cnn ?container ?navio))
					(cnn ?containerL ?navio)
				)
				:effect (
				and (not (container_livre ?containerL) )
					(container_livre ?container)
					(cEmCimaDe ?container ?containerL)
					(not(cno_Porto ?container ?porto))
					(cnn ?container ?navio)
					(increase (total-cost) 3)
				
				)
	)
	
	
	
)