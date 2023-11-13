extends Area2D

signal coin_collected

<<<<<<< HEAD

=======
>>>>>>> 09d1f82bcd0ac13e4d15ad4abaf5f6d4c6421ac3
func _on_Coin2D_body_entered(body):
	if body.get_name() == "Player":
		body.add_Coin()
		queue_free()
<<<<<<< HEAD
=======
		
>>>>>>> 09d1f82bcd0ac13e4d15ad4abaf5f6d4c6421ac3
		pass # Replace with function body.

