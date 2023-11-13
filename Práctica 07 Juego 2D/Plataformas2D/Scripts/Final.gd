extends Control
onready var musicPlayer = $FinalSonido  # Reemplaza con el nombre correcto de tu nodo


# Called when the node enters the scene tree for the first time.
func _ready():
	musicPlayer.play()
	


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/Mundo.tscn")
