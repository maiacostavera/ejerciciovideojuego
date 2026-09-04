extends CanvasLayer


var tiempo_restante = 60

onready var jugador1 = get_parent().get_node("personaje/KinematicBody2D")
onready var jugador2 = get_parent().get_node("personaje2/KinematicBody2D")


func _ready():
	actualizar_textos()
	$Reloj.start()


func _process(delta):
	actualizar_textos()


func actualizar_textos():
	$PuntosJugador1.text = "Jugador 1: " + str(jugador1.puntos)
	$PuntosJugador2.text = "Jugador 2: " + str(jugador2.puntos)
	$Tiempo.text = "Tiempo: " + str(tiempo_restante)


func _on_Reloj_timeout():
	tiempo_restante -= 1
	
	if tiempo_restante <= 0:
		tiempo_restante = 0
		$Reloj.stop()
		terminar_partida()
	
	actualizar_textos()


func terminar_partida():
	if jugador1.puntos > jugador2.puntos:
		$Mensaje.text = "¡Se acabó el tiempo!\nGanó el jugador 1"
	elif jugador2.puntos > jugador1.puntos:
		$Mensaje.text = "¡Se acabó el tiempo!\nGanó el jugador 2"
	else:
		$Mensaje.text = "¡Se acabó el tiempo!\nEmpataron"
	
	$Mensaje.visible = true
	get_tree().paused = true
