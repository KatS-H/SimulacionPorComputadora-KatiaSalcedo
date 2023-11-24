extends Node3D

@onready var musicPlayer = $Music
# Called when the node enters the scene tree for the first time.
func _ready():
	musicPlayer.play()
	GameManager.score = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

