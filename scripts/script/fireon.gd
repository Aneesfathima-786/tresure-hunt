extends KinematicBody2D

var car = 300
var vel = Vector2()

func _on_fireon_body_entered(body):
	if body.name == "player":
		get_tree().change_scene('res://scene/rl8.tscn')


func _physics_process(delta):
	vel.y = car
	vel = move_and_slide(vel)

func _on_VisibilityNotifier2D_screen_exited():
	position.x = 0
	position.y = 0