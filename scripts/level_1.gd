extends Node2D

var enemy_types : Array[PackedScene]

const vehicle_left_direction = preload("res://scenes/vehicle_left_direction.tscn")
const vehicle_right_direction = preload("res://scenes/vehicle_right_direction.tscn")

func _ready() -> void:
	pass

func _on_timer_timeout() -> void:
	instantiate_enemies(vehicle_left_direction, Vector2(288, randf_range(-80, -256)))
	instantiate_enemies(vehicle_right_direction, Vector2(-360, randf_range(-320, -504)))

	instantiate_enemies(vehicle_left_direction, Vector2(288, randf_range(-912, -1088)))
	instantiate_enemies(vehicle_right_direction, Vector2(-360, randf_range(-1160, -1366)))

	instantiate_enemies(vehicle_left_direction, Vector2(288, randf_range(-1488, -1656)))
	instantiate_enemies(vehicle_right_direction, Vector2(-360, randf_range(-1736, -1912)))

	instantiate_enemies(vehicle_left_direction, Vector2(288, randf_range(-2000, -2160)))
	instantiate_enemies(vehicle_right_direction, Vector2(-360, randf_range(-2248, -2424)))

func instantiate_enemies(enemies, pos):
	var enemy = enemies.instantiate()
	enemy.position = Vector2(pos)
	add_child(enemy)
