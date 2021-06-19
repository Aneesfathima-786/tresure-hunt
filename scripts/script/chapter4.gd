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
		$AnimatedSprite.play("7")
		
		
		
	elif test == 8:
		$AnimatedSprite.play("8")
		
		
	elif test == 9:
		$AnimatedSprite.play("9")
		
		
	elif test == 10:
		$AnimatedSprite.play("10")
		

		
		
	elif test == 11:
		$AnimatedSprite.play("11")
		
		
	elif test == 12:
		$AnimatedSprite.play("12")
		
		
	elif test == 13:
		$AnimatedSprite.play("13")
		

		
		

		


		
	elif test == 14:
		get_tree().change_scene('res://scene/stage5.tscn')
		




func _on_nextx_pressed():
	if test < 14: 
		test = test +1


func _on_backx_pressed():
	if test > 1: 
		test = test -1
