extends Celda

# Detectar input de los declarados
func _input(event: InputEvent) -> void:
	
	# Posición inicial de mi jugador (0 , 0)
	var direccion_x = 0
	var direccion_y = 0
	
	#Bucle de eventos.
	if event.is_action_pressed("derecha"):
		direccion_x = 1
	if event.is_action_pressed("izquierda"):
		direccion_x = -1
	if event.is_action_pressed("arriba"):
		direccion_y = -1
	if event.is_action_pressed("abajo"):
		direccion_y = 1
	
	# si sucede alguno de los inputs declarados, el jugador se mueve una celda en esa dirección
	position.x += direccion_x * celda_res
	position.y += direccion_y * celda_res
	
	print (coordenadas())
	
	
	
	
	
	
	
	
	
	
	
	
	
	
