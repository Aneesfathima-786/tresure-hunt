extends Area2D
export var AF = 1


func _process(delta):
	if AF == 1:
		$AnimatedSprite.play("red")
	elif AF == 2:
		$AnimatedSprite.play("blue")
	elif AF == 3:
		$AnimatedSprite.play("green")
	elif AF == 4:
		$AnimatedSprite.play("yellow")
	elif AF == 5:
		$AnimatedSprite.play("rose")

func _on_diama_body_entered(body):
	if body.name == "player":
		if AF  == 1: 
			get_tree().change_scene('res://scene/q1.tscn')
		elif AF  == 2: 
			get_tree().change_scene('res://scene/q2.tscn')
		elif AF  == 3: 
			get_tree().change_scene('res://scene/q3.tscn')
		elif AF  == 4: 
			get_tree().change_scene('res://scene/q4.tscn')
		elif AF  == 5: 
			get_tree().change_scene('res://scene/q5.tscn')
