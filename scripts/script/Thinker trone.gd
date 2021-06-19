extends Area2D


var AF = 0;
export var a = 1;


func _physics_process(delta):
	if a == 1:
		$AnimatedSprite.play("AF7")
	elif a == 2:
		$AnimatedSprite.play("AF71")
	elif a == 3:
		$AnimatedSprite.play("AF72")
	elif a == 4:
		$AnimatedSprite.play("AF73")


func _on_Thinker_trone_body_entered(body):
	if body.name == "player":
		queue_free()
	elif body.name == "car":
		queue_free()
		
#	if AF == 10 :
#		get_tree().change_scene('res://scene/stage6.tscn')
