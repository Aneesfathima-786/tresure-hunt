extends KinematicBody2D
var vel = Vector2()
export var speed = 400;
const FIRE = preload("res://scene/fire.tscn")
var is_attacking = false
var s_c = "h"
var t_b = ""


func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		if is_attacking == false:
			$AnimatedSprite.play("up")
			if sign($Position2D2.position.y) == 1:
				$Position2D2.position.y *= -1
			s_c = "v"
			t_b = "t"

			vel.y = - speed
		
	elif Input.is_action_pressed("ui_down"):
		if is_attacking == false:
			$AnimatedSprite.play("down")
			if sign($Position2D2.position.y) == -1:
				$Position2D2.position.y *= -1
			s_c = "v"
			t_b = "d"

			vel.y = speed
		
	elif Input.is_action_pressed("ui_right"):
		if is_attacking == false:
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.play("right")
			if sign($Position2D.position.x) == -1:
				$Position2D.position.x *= -1
			s_c = "h"

			vel.x = speed
		
	elif Input.is_action_pressed("ui_left"):
		if is_attacking == false:
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.play("right")
			if sign($Position2D.position.x) == 1:
				$Position2D.position.x *= -1
			s_c = "h"

			vel.x = -speed
		
		
	else:
		vel.x = 0;
		vel.y = 0;
		if is_attacking == false:
			$AnimatedSprite.play("idle")

		
	if Input.is_action_just_pressed("ui_accept") && is_attacking == false:
		is_attacking = true
		if t_b == "t":
			$AnimatedSprite.play("attack_u")
		elif t_b == "d":
			$AnimatedSprite.play("attack_d")
		if s_c == "h":
			$AnimatedSprite.play("attack_l")
		
		var fire = FIRE.instance()
		if s_c == "h":
			if sign($Position2D.position.x) == 1:
				
				$AnimatedSprite.flip_h = true
				fire.direct(1,s_c)
			else:
	
				$AnimatedSprite.flip_h = false
				fire.direct(-1,s_c)
		if s_c == "v":
			if sign($Position2D2.position.y) == 1:
				
				$AnimatedSprite.flip_h = true
				fire.direct(1,s_c)
			else:
	
				$AnimatedSprite.flip_h = false
				fire.direct(-1,s_c)
		get_parent().add_child(fire)
		if s_c == "h":
			fire.position = $Position2D.global_position
		elif s_c == "v":
			fire.position = $Position2D2.global_position
		

	vel = move_and_slide(vel)
	
		

func _on_AnimatedSprite_animation_finished():
	is_attacking = false
