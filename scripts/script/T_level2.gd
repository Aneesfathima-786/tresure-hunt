extends Node2D



func _physics_process(delta):
	var o = get_node("player").position
	if find_node("Enemycarbra",true,false):
		get_node("Enemycarbra").player = o
		var em = get_node("Enemycarbra").dead
		
		if em == true:
			if find_node("hr",true,false):
				get_node("hr").v = true
	
