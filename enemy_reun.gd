extends CharacterBody2D


var speed = 25
var player_chase = false
var player = null

func _physics_process(_delta: float) -> void:
	if player_chase and player:
		global_position += (player.global_position - global_position) / speed


func _on_detection_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		player = body
		player_chase = true


func _on_detection_area_body_exited(body: Node2D) -> void:
	if body == player:
		player = null
		player_chase = false

		
