extends Control

signal text_menu_closed

var task1_active = false
var task1_finished = false
var trash = 0

func _process(delta: float) -> void:
	if task1_active:
		if trash == 6:
			print("Task 1 completed")
			task1_active = false
func task1_chat():
	$task1.visible = true
func task2_chat():
	$task2.visible = true
func _on_ybutton_pressed() -> void:
	$task1.visible = false
	task1_active = true
	trash = 0
	emit_signal("text_menu_closed")

func _on_nbutton_pressed() -> void:
	$task1.visible = false
	task1_active = false	
	emit_signal("text_menu_closed")
 
func _on_sbutton_pressed() -> void:
	$task2.visible = false
	emit_signal("text_menu_closed")
