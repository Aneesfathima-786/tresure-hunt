extends KinematicBody2D

func _process(delta):
	pass
	
	#position = Vector2(-600, 200)
	#if Input.is_action_pressed("ui_accept"):
		 
		
	
func get_random_number(MAX, MIN):
	# method randomize
	randomize()
	# creating a variable num
	var num = randi()%MAX + MIN
	# return the value
	return num
	
	
	




func _on_Timer_timeout():
	position = Vector2(get_random_number(-600, 200), get_random_number(-900, -230))


func _on_firex_body_entered(body):
	if body.name == "player":
		get_tree().change_scene('res://scene/rt1.tscn')
