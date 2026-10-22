extends Node

var score = 0
var total_coin = 11

@onready var scorelabel: Label = $CanvasLayer/scorelabel

func _ready() -> void:
	scorelabel.text = "coins = " + str(score) + "/" + str(total_coin)
	


func add_point():
	score += 1
	scorelabel.text = "coin = " + str(score) + "/" + str(total_coin)
