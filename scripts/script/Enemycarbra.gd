extends KinematicBody2D
var vel = Vector2.ZERO
var speed = 200
var player = [0,0]
var id = false
var dead = false
func _physics_process(delta):

	vel = (player-position).normalized() * speed
	vel = move_and_slide(vel)
#	print(vel)
	



func _on_kill_body_entered(body):
	if dead == false:
		if body.name == "player":
			get_tree().change_scene('res://scene/rt1.tscn')



	


func _on_kill_area_exited(area):
	dead = true
	$Timer.start()
	


func _on_Timer_timeout():
	queue_free()
