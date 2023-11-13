extends Control

<<<<<<< HEAD
<<<<<<< HEAD
onready var musicPlayer = $MenuSonido  # Reemplaza con el nombre correcto de tu nodo


# Called when the node enters the scene tree for the first time.
func _ready():
	musicPlayer.play()
	$VBoxContainer/StartButton.grab_focus()
	
=======
# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/StartButton.grab_focus()
>>>>>>> 09d1f82bcd0ac13e4d15ad4abaf5f6d4c6421ac3
=======
# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/StartButton.grab_focus()
>>>>>>> 09d1f82bcd0ac13e4d15ad4abaf5f6d4c6421ac3

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/Mundo.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()
