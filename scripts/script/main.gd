extends Node2D
var score = 0 setget set_score

func _ready():
	#get_node("/root/main/HUB/score").set_text("golds : "+str(0))
	pass

func set_score(value):
	score = value
	get_node("/root/main/HUB/score").set_text("golds : "+str(score))
	
	





