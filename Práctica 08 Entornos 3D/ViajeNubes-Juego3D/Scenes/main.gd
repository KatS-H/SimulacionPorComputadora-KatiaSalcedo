extends Control

@onready var musicPlayer = $Music
@export var next_scene : PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	musicPlayer.play()

func _on_start_pressed():
	SceneTransition.load_scene(next_scene)

func _on_quit_pressed():
	get_tree().quit()
