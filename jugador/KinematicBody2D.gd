extends KinematicBody2D

var velocidad = 300.0
var puntos = 0
var vidas = 3


func _physics_process(delta):
	
	var direccion = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	
	var vector_velocidad = direccion * velocidad
	
	
	vector_velocidad = move_and_slide(vector_velocidad)


func sumar_punto():
	puntos += 1
	print("Tomates recolectados: ", puntos)
