extends Node2D
class_name Celda

#Declaramos una variable para darle tamaño(en pixeles) a nuestras celdas, en este caso 64 pixeles.
var celda_res: float = 64 

func coordenadas() -> Vector2i:
	# En Godot, la propiedad position de cualquier nodo 2D está expresada en pixeles, por eso dividimos la posicición en cada eje por el tamaño de nuestra celda.
	return Vector2i(position.x/celda_res, position.y/celda_res)  
