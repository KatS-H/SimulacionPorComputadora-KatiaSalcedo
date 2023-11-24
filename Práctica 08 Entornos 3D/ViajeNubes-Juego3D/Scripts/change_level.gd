extends Area3D

var time := 0.0

# Define the next scene to load in the inspector
@export var next_scene : PackedScene

func _on_body_entered(body):
	if body.is_in_group("Player"):
		Audio.play("res://Assets/Sonidos/LevelComplete.wav") # Play sound
		SceneTransition.load_scene(next_scene)

func _process(delta):
	
	rotate_y(2 * delta) # Rotation
	position.y += (cos(time * 5) * 1) * delta # Sine movement
	
	time += delta
