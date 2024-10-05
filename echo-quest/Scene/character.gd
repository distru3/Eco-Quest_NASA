extends AnimatedSprite2D

func play_idle_animation():
	%character.play("idle")

func move_upwards():
	%character.play("w_walk")

func move_downwards():
	%character.play("s_walk")

func move_rightwards():
	%character.play("d_walk")
	
func move_leftwards():
	%character.play("a_walk")
	
