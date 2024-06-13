extends Node

@onready var score_label = %scoreLabel

var points = 0

func add_points():
	points += 1
	print(points)
	score_label.text =  str(points)
	$clickSound.play()
