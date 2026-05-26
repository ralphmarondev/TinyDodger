class_name Player extends CharacterBody2D

var speed := 300

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	var direction = Vector2(0, 0)
	velocity = direction * speed
	move_and_slide()
