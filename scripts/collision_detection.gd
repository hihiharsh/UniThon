extends Area2D

var warningOne_sfx : AudioStream = preload("res://sounds/warnings/warningOne.wav")
var warningTwo_sfx : AudioStream = preload("res://sounds/warnings/warningTwo.wav")
var warningThree_sfx : AudioStream = preload("res://sounds/warnings/warningThree.wav")
var warningFour_sfx : AudioStream = preload("res://sounds/warnings/warningFour.wav")
var warningFive_sfx : AudioStream = preload("res://sounds/warnings/warningFive.wav")
var warningSix_sfx : AudioStream = preload("res://sounds/warnings/warningSix.wav")
var warningSeven_sfx : AudioStream = preload("res://sounds/warnings/warningSeven.wav")
var warningEight_sfx : AudioStream = preload("res://sounds/warnings/warningEight.wav")
var warningNine_sfx : AudioStream = preload("res://sounds/warnings/warningNine.wav")
var warningTen_sfx : AudioStream = preload("res://sounds/warnings/warningTen.wav")

@onready var audio : AudioStreamPlayer = $AudioStreamPlayer

func _on_body_entered(_body: Node2D) -> void:
	random_warning()

func play_sound(sound : AudioStream):
	audio.stream = sound
	audio.pitch_scale = randf_range(0.5, 1.5)
	audio.play()

func random_warning():
	var warnings : Array[AudioStream] = [warningOne_sfx, warningTwo_sfx, warningThree_sfx, warningFour_sfx, warningFive_sfx, warningSix_sfx, warningSeven_sfx, warningEight_sfx, warningNine_sfx, warningTen_sfx]
	randomize()
	var sfx_to_play = warnings[randi() % warnings.size()]
	play_sound(sfx_to_play)
