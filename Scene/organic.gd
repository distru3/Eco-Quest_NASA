extends Area2D

@onready var playerrr = get_node("/root/res://Scene/player.tscn")



func _on_body_entered(body):
	if body == playerrr:
		$Organic.visible = false
