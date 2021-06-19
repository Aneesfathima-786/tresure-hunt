extends Area2D


func _on_entrydoor2_body_entered(body):
	if body.name == "playerwm":
		get_tree().change_scene('res://scene/chapter2.tscn')
