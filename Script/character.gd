extends CharacterBody2D

@export var speed = 1000

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_dash"):
		position.x=position.x+500
	else:
		velocity.x = 0

	velocity.y = 0
	move_and_slide()
