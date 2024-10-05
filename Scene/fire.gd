extends CharacterBody2D

@onready var camp_fire = $"AnimatedSprite2D"
	
func _physics_process(delta: float) -> void:
	camp_fire.play("default")	
	
