extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var score = 0

func add_points():
	score += 1
	$ScoreLabel.text = "Score: " + str(score)

func game_over():
	$ScoreLabel.text = "Final Score: " + str(score)
