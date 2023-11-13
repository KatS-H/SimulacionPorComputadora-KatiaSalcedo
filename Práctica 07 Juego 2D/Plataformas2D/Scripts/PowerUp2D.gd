extends Area2D

func _on_PowerUp2D_body_entered(body):
	if body.get_name() == "Player":
		body.powerUp()
		queue_free()
		pass # Replace with function body.
