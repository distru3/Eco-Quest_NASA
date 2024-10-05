extends CharacterBody2D

@onready var _animated_sprite = $"%character"

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()

	# Check movement and play the correct animation
	if velocity.length() > 0:
		if Input.is_action_pressed("move_up"):
			_animated_sprite.move_upwards()
		elif Input.is_action_pressed("move_down"):
			_animated_sprite.move_downwards()
		elif Input.is_action_pressed("move_right"):
			_animated_sprite.flip_h=0
			_animated_sprite.move_rightwards()
		elif Input.is_action_pressed("move_left"):
			_animated_sprite.flip_h=1
			_animated_sprite.move_leftwards()
			
	else:
		_animated_sprite.play_idle_animation()
