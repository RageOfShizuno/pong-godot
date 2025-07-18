# This works to move the paddle up and down, and it limits the movement in the screen, but the "beginning" of the paddle is also considered the end of it, so it still phases through the bottom of the screen.
# Needs fixing


extends CharacterBody2D

@export var speed := 300.0

func _physics_process(delta):
	var input_direction := Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = Vector2(0, input_direction * speed)
	move_and_slide()
