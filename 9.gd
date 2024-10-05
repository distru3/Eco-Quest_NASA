extends StaticBody2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("9"):
		$Jug.visible=false
