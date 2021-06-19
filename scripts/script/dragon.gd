extends Area2D
var hp = 5


func _on_dragon_area_entered(area):
	if area.name == "fire":
		hp -= 1
		if hp <= 0:
			queue_free()


func _on_dragon_body_entered(body):
	pass # Replace with function body.
