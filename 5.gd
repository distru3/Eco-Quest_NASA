extends StaticBody2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("5"):
		$Bottle.visible=false
