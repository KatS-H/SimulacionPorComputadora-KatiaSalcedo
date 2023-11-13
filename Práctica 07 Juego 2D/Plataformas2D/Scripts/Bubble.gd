extends KinematicBody2D

var gravity = 10
var speed = 25
var velocity = Vector2(0, 0)
var moving_up = true

func _ready():
	$AnimationPlayer.play("")

func _process(delta):
	move_character()
	turn()

func move_character():
	velocity.x += gravity  # Añade gravedad en la dirección horizontal
	if moving_up:
		velocity.y = -speed
		velocity = move_and_slide(velocity, Vector2.RIGHT)  # Utiliza Vector2.RIGHT para controlar la dirección vertical
	else:
		velocity.y = speed
		velocity = move_and_slide(velocity, Vector2.RIGHT)

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body._looseLife(position.x)
		pass

func turn():
	if not $RayCast2D.is_colliding():
		moving_up = !moving_up
		scale.y = -scale.y  # Cambia la escala en la dirección vertical
