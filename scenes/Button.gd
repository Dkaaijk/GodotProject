extends Button

# Functie die wordt aangeroepen wanneer de knop wordt ingedrukt.
func _on_pressed():
	# Verander de huidige scène naar de 'main_menu' scène.
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
