extends Node2D

var test = 1


func _process(delta):
	
	if test == 1:
		$AnimatedSprite.play("1")
		
		
	elif test == 2:
		$AnimatedSprite.play("2")
		
		
	elif test == 3:
		$AnimatedSprite.play("3")
		
		
	elif test == 4:
		$AnimatedSprite.play("4")
		
		
	elif test == 5:
		$AnimatedSprite.play("5")
		
		
	elif test == 6:
		$AnimatedSprite.play("6")
		
		

		
	elif test == 7:
		get_tree().change_scene('res://scene/stage2.tscn')
		



	



func _on_nextx_pressed():
	if test < 7: 
		test = test +1


func _on_backx_pressed():
	if test > 1:
		test = test -1
