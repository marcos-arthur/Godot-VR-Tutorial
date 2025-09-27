extends Control

var button_count : int = 0


func _input(event):
	if event is InputEventMouseMotion:
		# Move our cursor
		var mouse_motion : InputEventMouseMotion = event
		$Cursor.position = mouse_motion.position - Vector2(16, 16)


func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/vr_scene/vr_scene.tscn")


func _on_exit_button_pressed() -> void:
	get_tree().quit()
