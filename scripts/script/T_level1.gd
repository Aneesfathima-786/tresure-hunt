extends Node2D



func _on_keymap_body_entered(body):
	if find_node("block",true,false):
		get_node("block").v = true
