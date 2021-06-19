extends KinematicBody2D
var vel = Vector2()
var speed = 300
export var dir = 1
func _physics_process(delta):
	
	vel.y = - speed * dir
	vel= move_and_slide(vel)
	
	
	if is_on_wall():
		dir = dir* -1



func _on_arx_body_entered(body):
	if body.name == "player":
		get_tree().change_scene('res://scene/rt1.tscn')
