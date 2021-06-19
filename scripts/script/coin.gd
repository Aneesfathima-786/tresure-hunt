extends "res://script/main.gd"

export var point = 37.8

func _on_coin_body_entered(body):
	if body.name == "playerwm":
		get_node("//root/main").score += point 
		queue_free()
	elif body.name == "player":
		get_node("//root/main").score += point 
		queue_free()
		pass
