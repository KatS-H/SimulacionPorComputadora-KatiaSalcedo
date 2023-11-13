extends Node2D

onready var musicPlayer = $Mundo3Sonido  # Reemplaza con el nombre correcto de tu nodo



# Called when the node enters the scene tree for the first time.
func _ready():
	 musicPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
