extends KinematicBody2D

var Vel = Vector2()

func _process(delta):
	Vel = move_and_slide(Vel)
	
func _input(event):
	if event is InputEventScreenDrag:
		position -= event.relative
