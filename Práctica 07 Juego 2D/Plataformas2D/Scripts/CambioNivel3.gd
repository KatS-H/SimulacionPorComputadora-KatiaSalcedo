extends Area2D

onready var sprite = $Sprite
onready var animationCasa = $AnimationCasa


func _on_CambioNivel3_body_entered(body):
	if body.get_name() == "Player":
		animationCasa.play("Abrir")
		yield(get_tree().create_timer(0.85), "timeout")
		get_tree().change_scene("res://Scenes/Final.tscn")
