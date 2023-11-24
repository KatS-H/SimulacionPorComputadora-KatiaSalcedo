extends Node3D

@onready var musicPlayer: AudioStreamPlayer = $World/Musica

func _ready():
	if musicPlayer:
		musicPlayer.play()
	GameManager.score = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

