extends Node

var score_manager

# Called when the node enters the scene tree for the first time.
func _ready():
	score_manager = get_node("res://scenes/ScoreManager.gd")
	MusicController.play_music() 

