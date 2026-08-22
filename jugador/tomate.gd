extends Area2D

func _on_tomate_area_entered(area):
	if area.name == "Manos":
		
		if area.get_parent().has_method("sumar_punto"):
			area.get_parent().sumar_punto()
			queue_free()
