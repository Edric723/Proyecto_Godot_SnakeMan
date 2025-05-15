extends Celda

var historial_movimiento : Array = []

func _ready() -> void:
	historial_movimiento.append(coordenadas())
	print("Inicio en:", coordenadas())

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
	
	
	if direccion_x == 0 and direccion_y == 0:
		return
		
	mover_jugador(direccion_x,direccion_y)
	
func mover_jugador(direccion_x:int, direccion_y:int) -> void:
	var pos_anterior := coordenadas()

	# si sucede alguno de los inputs declarados, el jugador se mueve una celda en esa dirección
	position.x += direccion_x * celda_res
	position.y += direccion_y * celda_res
	
	# get_viewport_rect() devuelve un rectángulo que representa el área visible del juego.
# Calculamos los límites máximos en píxeles de la pantalla.
	var max_width = get_viewport_rect().size.x  # Ancho del área visible
	var max_height = get_viewport_rect().size.y  # Alto del área visible

## Establecemos límites en el eje X.
	#if position.x < 0:
		#position.x = 0  # No salir por el borde izquierdo
	#elif position.x + celda_res > max_width:
		#position.x = max_width - celda_res  # No salir por el borde derecho
## Establecemos límites en el eje Y.
	#if position.y < 0:
		#position.y = 0  # No salir por el borde superior
	#elif position.y + celda_res > max_height:
		#position.y = max_height - celda_res  # No salir por el borde inferior

	position.x = clamp(position.x, 0, max_width - celda_res)
	position.y = clamp(position.y, 0, max_height - celda_res)
	
	# Nueva posición
	var nueva_pos := coordenadas()
	
	# Registrar solo si se movió (cambió de celda)
	if nueva_pos != pos_anterior:
		historial_movimiento.append(nueva_pos)
		print("Historial:", historial_movimiento)
	
	print ("Nueva posición:" , nueva_pos)
	
	
	
	
	
	
	
	
	
	
	
	
	
