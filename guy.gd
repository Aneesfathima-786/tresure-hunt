extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var x = 1


func _process(delta):
	if x == 1:
		$AnimatedSprite.play("dead")
	elif x == 2:
		$AnimatedSprite.play("idle")
	elif x == 3:
		$AnimatedSprite.play("right")




func _on_Timer_timeout():
	queue_free()
