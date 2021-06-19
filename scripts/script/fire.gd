extends Area2D

const speed = 760
var velocity = Vector2()
var direction = 1
var h = "h"

func _ready():
	pass

func _physics_process(delta):
	if h == "h":
		velocity.x = speed*delta*direction # 300*1*-1 = -300
		translate(velocity)
		$AnimatedSprite.play("shoot")
	if h == "v":
		velocity.y = speed*delta*direction # 300*1*-1 = -300
		translate(velocity)
		$AnimatedSprite.play("shoot")

func direct(dir,side):
	direction = dir
	h = side
	#print(direction)
	if dir == -1:
		$AnimatedSprite.flip_h = true

func h_or_v(val):
	h = val
	#print(h)

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_fire_body_entered(body):
	if body.name != "player":
		queue_free()
	if "enemy" in body.name:
		body.dead()
		
