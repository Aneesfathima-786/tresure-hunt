extends Area2D


func _on_entrydoor1_body_entered(body):
	if body.name == "playerwm":
		get_tree().change_scene('res://scene/chapter1.tscn')
	
