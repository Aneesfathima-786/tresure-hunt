extends PathFollow2D
export var f = 200
func _process(delta):
	set_offset(get_offset() + f*delta)