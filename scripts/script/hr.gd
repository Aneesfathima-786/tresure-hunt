extends Node2D

var v = false


func _physics_process(delta):
	if v == true:
		queue_free()