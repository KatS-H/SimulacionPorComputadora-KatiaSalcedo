extends Control

onready var musicPlayer = $MenuSonido  # Reemplaza con el nombre correcto de tu nodo


# Called when the node enters the scene tree for the first time.
func _ready():
	musicPlayer.play()
	$VBoxContainer/StartButton.grab_focus()
	

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/Mundo.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()
