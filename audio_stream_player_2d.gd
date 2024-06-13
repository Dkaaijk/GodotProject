extends Node

var back_audio = load("res://audio/Among Us Theme.mp3")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func play_music():
	
	$AudioStreamPlayer2D.stream = back_audio
	$AudioStreamPlayer2D.play()
