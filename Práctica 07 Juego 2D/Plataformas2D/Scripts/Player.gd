extends KinematicBody2D

const moveSpeed = 40
const maxSpeed = 70

const jumpHeight = -300
const up = Vector2(0, -1)
const gravity = 15

onready var sprite = $Sprite
onready var animationPlayer = $AnimationPlayer

var motion = Vector2()

var life = true

func _physics_process(delta):
	motion.y += gravity
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = true
		animationPlayer.play("Walk")
		motion.x = min(motion.x + moveSpeed, maxSpeed)
	elif Input.is_action_pressed("ui_left"):	
		sprite.flip_h = false
		animationPlayer.play("Walk")
		motion.x = max(motion.x - moveSpeed, -maxSpeed)
	elif Input.is_action_pressed("ui_accept"):
		animationPlayer.play("Jump")
	elif life == false:
		animationPlayer.play("Death")
	else:
		animationPlayer.play("Idle")
		friction = true
		
	if is_on_floor():
		if Input.is_action_pressed("ui_accept"):
			animationPlayer.play("Jump")
			motion.y = jumpHeight
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.5)
	else:
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.1)
			
	motion = move_and_slide(motion,up)
	
#COINS
func add_Coin():
	var canvasLayer = get_tree().get_root().find_node("CanvasLayer", true, false)
	
	canvasLayer.handleCoinCollected()
	
func _looseLife(var enemyposx):
	
	if position.x < enemyposx:
		motion.x = -300
		motion.y = -200
		
	if position.x > enemyposx:
		motion.x = 300
		motion.y = -200	
		
	Global.lifes = Global.lifes - 1
	
	var canvasLayer = get_tree().get_root().find_node("CanvasLayer", true, false)
	canvasLayer.handleHearts(Global.lifes)
	
	if Global.lifes <= 0:
		life = false
		yield(get_tree().create_timer(0.75), "timeout")
		get_tree().change_scene("res://Scenes/Final.tscn")

#SPIKES DAMAGE
func _on_Spikes_body_entered(body):
	if body.get_name() == "Player":
		body._looseLife(position.x)
		pass
		

#POWERUP
func powerUp():
	var canvasLayer = get_tree().get_root().find_node("CanvasLayer", true, false)
	Global.lifes +=  1
	canvasLayer.hearts(Global.lifes)
	
