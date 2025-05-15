extends Celda
class_name Obtenibles

signal recolectando

# Script que genera un objeto que el jugador puede obtener.
# Hereda de Celda, por lo que se puede usar coordenadas para posicionarse en la grilla.

func _ready() -> void:
	add_to_group("obtenibles")
	print("Objeto generado en:", coordenadas())
	
func recolectar():
	emit_signal("recolectando") # Emitimos una señal antes de eliminar.
	queue_free()
