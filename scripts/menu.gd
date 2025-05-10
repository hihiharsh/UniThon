extends Control
@onready var distance_travelled: Label = $DistanceTravelled

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
