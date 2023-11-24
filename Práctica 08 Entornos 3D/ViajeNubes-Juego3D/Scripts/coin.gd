extends Area3D

var time := 0.0
var grabbed := false

# Collecting coins

func _on_body_entered(body):
	if body.is_in_group("Player") and !grabbed:
		
		#body.collect_coin()
		body.coin_collected.emit()
		
		Audio.play("res://Assets/Sonidos/coin3.wav") # Play sound
		GameManager.add_score()
		
		$Mesh.queue_free() # Make invisible
		$Particles.emitting = false # Stop emitting stars
		
		grabbed = true
		
# Rotating, animating up and down

func _process(delta):
	
	rotate_y(2 * delta) # Rotation
	position.y += (cos(time * 5) * 1) * delta # Sine movement
	
	time += delta
