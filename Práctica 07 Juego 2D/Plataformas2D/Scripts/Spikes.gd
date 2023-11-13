extends Node2D

func _ready():
	$AnimationPlayer.play("spikesmoving")
	


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body._looseLife(position.x)
		pass


func _on_Area2D2_body_entered(body):
	if body.get_name() == "Player":
		body._looseLife(position.x)
		pass



func _on_Area2D3_body_entered(body):
	if body.get_name() == "Player":
		body._looseLife(position.x)
		pass
