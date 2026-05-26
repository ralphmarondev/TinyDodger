class_name Level1 extends Node2D

func _on_win_area_body_entered(body: Node2D) -> void:
	if body is Player:
		print("You win!")
		body.queue_free()
