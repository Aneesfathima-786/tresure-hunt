extends Area2D




	


func _on_door3_body_entered(body):
	if body.name == "player":
		get_tree().change_scene('res://scene/chapter3.tscn')
