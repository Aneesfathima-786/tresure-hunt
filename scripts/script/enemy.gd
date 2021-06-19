extends KinematicBody2D
onready var guy = preload("res://scene/guy.tscn")

export var side = 0
export var level = 1

var end = 1

func _process(delta):
	if side == 0:
		$AnimatedSprite.play("idle")
	elif side == 1:
		$AnimatedSprite.play("up")
	elif side == 2:
		$AnimatedSprite.play("down")
	elif side == 3:
		$AnimatedSprite.play("right")
	elif side == 4:
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("up")
	else:
		$AnimatedSprite.play("g")


func dead():
	#get_node().car()
	side = 7
	var pos = get_position()
	var guyy = guy.instance()
	add_child(guyy)
	end = 2
	position.x = pos[0]
	position.y = pos[1]
	$Timer.start()
	#queue_free()

func _on_Timer_timeout():
	queue_free()
