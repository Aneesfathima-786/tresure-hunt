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
		$AnimatedSprite.play("14")
		
		
	elif test == 15:
		$AnimatedSprite.play("15")
		
		
	elif test == 16:
		$AnimatedSprite.play("16")
		
		
	elif test == 17:
		$AnimatedSprite.play("17")
		
		
	elif test == 18:
		$AnimatedSprite.play("18")
		
	elif test == 19:
		$AnimatedSprite.play("19")
		
	elif test == 20:
		$AnimatedSprite.play("20")
		
	elif test == 21:
		$AnimatedSprite.play("21")
		
		
	elif test == 22:
		$AnimatedSprite.play("22")
		
		
	elif test == 23:
		$AnimatedSprite.play("23")
		
		
	elif test == 24:
		$AnimatedSprite.play("24")
		
		
	elif test == 25:
		$AnimatedSprite.play("25")
		
	elif test == 26:
		$AnimatedSprite.play("26")
		
	elif test == 27:
		$AnimatedSprite.play("27")

	elif test == 28:
		get_tree().change_scene('res://scene/stage3.tscn')
		
		



	




func _on_nextx_pressed():
	if test < 28: 
		test = test +1


func _on_backx_pressed():
	if test > 1:
		test = test -1
