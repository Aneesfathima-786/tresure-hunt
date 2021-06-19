extends Area2D



func _on_em1_body_entered(body):
	var end = get_parent().end
	if end == 1 :
		$AnimatedSprite.play("idle")
	else:
		$AnimatedSprite.play("done")
		
	
	
	if body.name == "player":
		var level = get_parent().level
		#print(level)
		if end == 1 :
			if level == 1:
				get_tree().change_scene("res://scene/rl3.tscn")
			elif level == 2:
				get_tree().change_scene("res://scene/rl3.tscn")
			
