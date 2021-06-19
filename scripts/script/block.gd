extends Node2D

var v = false

func _process(delta):
	if v == true:
		queue_free()