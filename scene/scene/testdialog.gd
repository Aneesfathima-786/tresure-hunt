extends Node2D

var test = 1


func _process(delta):
	if test == 1:
		$AnimatedSprite.play("1")
	elif test == 2:
		$AnimatedSprite.play("2")
	elif test == 3:
		$AnimatedSprite.play("3")

func _on_Button_pressed():
	test = test +1


# only for testing not a part of the game