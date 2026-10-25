extends CharacterBody2D

var speed = 25
var player_chase = false
var player = null

func _physics_process(delta: float) -> void:
	if player_chase and player:
		position += (player.position - position)/ speed
	
	
		
