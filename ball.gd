extends RigidBody2D

@export var initial_speed := 400

func _ready():
	print("Ball ready")
	var direction_x = 1 if randf() > 0.5 else -1
	var direction_y = 1 if randf() > 0.5 else -1
	var direction = Vector2(direction_x, direction_y).normalized()
	linear_velocity = direction * initial_speed
	sleeping = false
	print("Initial velocity: ", linear_velocity)

func _integrate_forces(state):
	linear_velocity = linear_velocity.normalized() * initial_speed
