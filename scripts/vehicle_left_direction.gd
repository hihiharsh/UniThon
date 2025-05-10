extends Node2D

@export var speed : float = 100.0
@onready var sprite: Sprite2D = $Sprite2D

var rickshaw : CompressedTexture2D = preload("res://assets/vehicles/rickshawTest.png")
var car : CompressedTexture2D = preload("res://assets/vehicles/car.png")
var bike : CompressedTexture2D = preload("res://assets/vehicles/bike.png")
var vehicles : Array[CompressedTexture2D] = [rickshaw, car, bike]

func _ready() -> void:
	randomize()
	speed += randf_range(100, 400)
	sprite.texture = vehicles[randi_range(0, vehicles.size() - 1)]

func _process(delta: float) -> void:
	position.x -= speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
