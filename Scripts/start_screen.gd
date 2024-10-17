extends CanvasLayer

@onready var timer = $Timer
@onready var texture_rect = $MarginContainer/VBoxContainer/TextureRect


var control_array = []

func _ready():
	control_array = [texture_rect]
	for control in control_array:
		(control as Control).visible = false


func _load_game():
	get_tree().change_scene_to_file("res://Cenas/main.tscn")
func _show_next_control():
	var control = control_array.pop_front() as Control
	if control != null:
		control.visible = true
	else:
		timer.stop()
		timer.queue_free()


func _on_button_pressed():
	pass # Replace with function body.
