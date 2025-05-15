extends Node2D
# Cargamos la escena como PackedScene para poder instanciarla.
var obtenible := preload("res://src/obtenible.tscn")

# Referencia al nodo jugador, que debe estar instanciado en la escena.
@onready var jugador := $jugador

func _ready() -> void:
	randomize() # Asegura que el randomizador no repita.
	instanciar_obtenible()


func instanciar_obtenible():
	var objeto = obtenible.instantiate()
	var posicion = generar_ubicacion_libre()
	
	objeto.position = posicion
	add_child(objeto)


func generar_ubicacion_libre () -> Vector2:
	var celda_res = jugador.celda_res
	var max_x = get_viewport_rect().size.x / celda_res
	var max_y = get_viewport_rect().size.y / celda_res
	
	var posicion_jugador: Vector2i = jugador.coordenadas()
	var nueva_posicion: Vector2i = posicion_jugador
	
	
	# Elegimos posiciones hasta que no sea la misma que la del jugador
	while nueva_posicion == posicion_jugador:
		nueva_posicion = Vector2i(randi() % int(max_x), randi() % int(max_y))

	
	return nueva_posicion * celda_res
	
	
