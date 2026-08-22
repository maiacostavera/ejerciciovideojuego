extends Node


var tomate_escena = preload("res://escenas/tomates.tscn")

func _ready():
	randomize()
	
	
	var jugador = get_parent().get_node("personaje") 
	
	if jugador == null:
		print("¡No encontré al jugador! Revisá que el nombre sea exacto.")
		return
		
	var pos_centro = jugador.position
	
	for i in range(10):
		var nuevo_tomate = tomate_escena.instance()
		

		var offset_x = rand_range(-200, 200)
		var offset_y = rand_range(-200, 200)
		
		nuevo_tomate.position = Vector2(pos_centro.x + offset_x, pos_centro.y + offset_y)
		add_child(nuevo_tomate)
