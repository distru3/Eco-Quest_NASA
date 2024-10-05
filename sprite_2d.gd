extends Sprite2D
	
@onready var waterr = $"river/water"

func _physics_process(delta: float) -> void:
 waterr.play("idle")
	
