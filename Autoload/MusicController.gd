extends Node

var back_music = load("res://audio/Among Us Theme.mp3")

func _ready():
	pass 
	
func play_music():
	
	$Music.stream = back_music
	$Music.play()


