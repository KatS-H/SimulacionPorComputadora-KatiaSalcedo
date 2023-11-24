extends CanvasLayer

@onready var score_label = %Coins
@onready var time_label = %Time

#func _on_coin_collected(coins):
	
	#$Coins.text = str(coins)
	
func _process(_delta):
	# Set the score label text to the score variable in game maanger script
	score_label.text = " %d" % GameManager.score
	time_label.text = " %d" % max(0, GameManager.remaining_time)
