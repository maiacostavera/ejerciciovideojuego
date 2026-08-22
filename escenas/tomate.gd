extends Area2D

func _on_Tomate_body_entered(body):
	# Preguntamos si el cuerpo que nos tocó tiene la función de sumar puntos (o sea, si es el jugador)
	if body.has_method("sumar_punto"):
		# Le sumamos el punto
		body.sumar_punto()
		
		# queue_free() es la instrucción de Godot para destruir un nodo/objeto y hacerlo desaparecer de la pantalla
		queue_free()
