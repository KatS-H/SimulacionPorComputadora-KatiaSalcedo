extends CanvasLayer

var timer_seconds = 0
var max_time = 60  # Duración máxima en segundos

var heart1 
var heart2
var heart3
var heart4
var heart5

func _ready():

	
	heart1 = get_node("Heart1")
	heart2 = get_node("Heart2")
	heart3 = get_node("Heart3")
	heart4 = get_node("Heart4")
	heart5 = get_node("Heart5")
	
	heart4.visible = false
	heart5.visible = false
	
	var coinNode = get_tree().get_root().find_node("Coin2D", true, false)
	coinNode.connect("coinCollected", self, "handleCoinCollected")
	$CoinsCollectedText.text = String(Global.coins)
	
func handleCoinCollected():
		print("Coin Collected")
		Global.coins += 1
		$CoinsCollectedText.text = String(Global.coins)

		updateCounter()
	
func hearts(lifes):
	handleHearts(Global.lifes)

func handleHearts(lifes):
	for i in range(1, 6):
		var heart = get_node("Heart" + str(i))

		if i <= lifes:
			heart.visible = true
		else:
			heart.visible = false

func _process(delta):
	timer_seconds += delta
	updateCounter()

func updateCounter():
	var remaining_time = max(0, max_time - timer_seconds)
	$Contador.text = "Tiempo: " + str(int(remaining_time))
	
	if remaining_time <= 0:
		print("Time's up!")
		# Aquí puedes realizar alguna acción cuando se agote el tiempo.
		# Por ejemplo, cambiar de escena o reiniciar el juego.
