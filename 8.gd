extends StaticBody2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("8"):
		$Jug.visible=false
