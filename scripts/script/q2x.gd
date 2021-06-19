extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_a_pressed():
	get_tree().change_scene('res://scene/T_level3.tscn')


func _on_b_pressed():
	get_tree().change_scene('res://scene/rt1.tscn')


func _on_c_pressed():
	get_tree().change_scene('res://scene/rt1.tscn')


func _on_d_pressed():
	get_tree().change_scene('res://scene/rt1.tscn')


func _on_back_pressed():
	get_tree().change_scene('res://scene/q2.tscn')
