class_name Player extends CharacterBody2D

var speed := 300

func _process(_delta: float) -> void:
	var direction = Vector2(0, 0)
	
	if Input.is_action_pressed("move_right"):
		direction.x = 1
	if Input.is_action_pressed("move_left"):
		direction.x = -1
	if Input.is_action_pressed("move_up"):
		direction.y = -1
		# In godot going up is negative. Wierd right? HAHAHAH
	if Input.is_action_pressed("move_down"):
		direction.y = 1
		
	direction = direction.normalized()
	velocity = direction * speed
	move_and_slide()
