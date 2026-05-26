class_name Enemy extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	var player := body as Player
	if player:
		print("ouch...")
		player.reset_player()
