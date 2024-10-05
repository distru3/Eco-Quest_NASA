extends CharacterBody2D


func _on_chat_area_area_entered(area: Area2D) -> void:
	if Input.is_action_pressed("interact"):
		$npc_quest/task1.visible = true
	elif Input.is_action_pressed("interact2"):
		$npc_quest/task2.visible = true


func _process(delta: float) -> void:
	_on_chat_area_area_entered($chat_area)
