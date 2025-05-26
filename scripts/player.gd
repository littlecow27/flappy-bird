extends CharacterBody2D

@export var JUMP_VELOCITY := 200.0
@export var GRAVITY := 300.0

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("input_Jump"):
		velocity.y = -JUMP_VELOCITY
	else:
		velocity.y += GRAVITY * delta
	move_and_slide()
