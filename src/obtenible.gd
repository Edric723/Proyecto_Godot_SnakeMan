extends Celda
class_name Obtenibles

# Script que genera un objeto que el jugador puede obtener.
# Hereda de Celda, por lo que se puede usar coordenadas para posicionarse en la grilla.

func _ready() -> void:
	print("Objeto generado en:", coordenadas())
	
