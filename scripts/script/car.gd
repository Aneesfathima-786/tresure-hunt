extends KinematicBody2D
var vel = Vector2()
var speed = 350;

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		$AnimatedSprite.play("up")
		vel.y = - speed
		
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("down")
		vel.y = speed
		
	elif Input.is_action_pressed("ui_right"):
		$AnimatedSprite.play("right")
		vel.x = speed
		
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite.play("left")
		vel.x = -speed
		
	else:
		vel.x = 0;
		vel.y = 0;
		
		
		
	vel = move_and_slide(vel)
		