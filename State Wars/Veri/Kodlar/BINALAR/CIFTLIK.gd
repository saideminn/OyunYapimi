extends Area2D

func _on_CIFTLIK_body_entered(body):
	if body.is_in_group("Düşman"):
		queue_free()

func _on_CIFTLIK_body_exited(body):
	pass # Replace with function body.
