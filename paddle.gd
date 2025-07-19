extends CharacterBody2D

@export var speed := 300.0
@export_enum("left", "right") var paddle_side := "left"  # ← Scegli dal menu laterale

func _physics_process(delta):
	var input_up := ""
	var input_down := ""

	if paddle_side == "left":
		input_up = "paddle_left_up"
		input_down = "paddle_left_down"
	else:
		input_up = "paddle_right_up"
		input_down = "paddle_right_down"

	var input_direction := Input.get_action_strength(input_down) - Input.get_action_strength(input_up)
	velocity = Vector2(0, input_direction * speed)
	move_and_slide()
