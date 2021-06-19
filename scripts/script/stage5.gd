extends Node2D



func _on_entryx_body_entered(body):
	if body.name == "player":
		get_tree().change_scene('res://scene/stage4.tscn')


func _on_exit_body_entered(body):
	if body.name == "player":
		get_tree().change_scene('res://scene/stage6.tscn')
