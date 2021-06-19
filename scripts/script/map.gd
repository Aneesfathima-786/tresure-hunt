extends Area2D

export var BAT_MAN = 1


func _on_map_body_entered(body):
	if body.name == "player":
		if BAT_MAN == 1:
			get_tree().change_scene('res://scene/chapter6.tscn')
		elif BAT_MAN == 2:
			get_tree().change_scene('res://scene/rl7.tscn')
		elif BAT_MAN == 3:
			get_tree().change_scene('res://scene/rl7.tscn')
