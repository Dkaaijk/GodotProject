extends Area2D

# Verwijs naar de GameManager instantie. Dit object beheert waarschijnlijk de punten en andere spelstatistieken.
@onready var game_manager = %GameManager

# Functie die wordt aangeroepen wanneer een ander item het gebied binnenkomt.
func _on_body_entered(body):
	# Controleer of het binnenkomende ite, een CharacterBody2D is.
	if (body.name == "CharacterBody2D"):
		queue_free()
		# Roep de functie aan om punten toe te voegen in de GameManager.
		game_manager.add_points()
