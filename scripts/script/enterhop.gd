extends Area2D



func _on_enterhop_body_entered(body):
	if body.name == "car":
		get_tree().change_scene('res://scene/chapter5.tscn')
