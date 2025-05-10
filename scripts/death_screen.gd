extends Control
@onready var quote : Label = $Quote
var quotes : Array[String] = ["You died in excruciating pain with your remanins scattered everywhere around which would always spook the school going kids for in their sleep."
, "Now certainly your dream of getting your family out of poverty is forever vanished leaving them in trauma and misery for the rest of their lives.",
 "Not even the crows would feast on your mutilated corpse."
, "Your remains were just dumped besides the Metro Construction rubble leaving red tint around."
, "You hoped it was a nightmarish dream but were only awoken by severe pulsating pain with your body soaked in your own blood."
, "You had your birthday a week later yet here you lie in the pool of red velvet blood."
, "Your friends were expecting you. Now you put them in a lot of grief."
, "Your parents were crushed metaphorically after hearing your news."
, "You lie still looking up at the horizon covered partially with the ongoing Metro Construction bridge. Rest easy."
, "You stood awake a day prior completing your work only to be covered in blood ink, not even tickmarked or signed."
, "You could have waited a minute for the signal to turn red instead of you being turned red."
, "You should have looked left, right and left again."]

func _ready() -> void:
	var random = randi_range(0, quotes.size() - 1)
	quote.text = quotes[random]

func _on_retry_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

func _on_return_to_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
