extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	MusicController.play_music()






func _on_map_1_pressed():
	get_tree().change_scene_to_file("res://scenes/lvl1.tscn")


func _on_map_2_pressed():
	get_tree().change_scene_to_file("res://scenes/lvl2.tscn")
