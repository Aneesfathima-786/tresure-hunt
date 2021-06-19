extends Label



func _on_AnimationPlayer_animation_finished(anim_name):
	$AnimationPlayer.play("New Anim")
