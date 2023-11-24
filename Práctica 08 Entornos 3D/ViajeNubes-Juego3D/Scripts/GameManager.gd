extends Node

var score : int = 0
var timer_seconds = 0
var max_time = 300  # Duración máxima en segundos
var remaining_time = 0
var timer_started = false


# Adds 1 to score variable
func add_score():
	score += 1

# Called when the node enters the scene tree for the first time.
func _ready():
	timer_started = true
	
func load_next_level(next_scene : PackedScene):
	get_tree().change_scene_to_packed(next_scene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if timer_started:
		timer_seconds += delta
		updateCounter()

func updateCounter():
	remaining_time = max(0, max_time - timer_seconds)
	
	if remaining_time <= 0:
		print("Time's up!")
