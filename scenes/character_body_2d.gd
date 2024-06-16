extends CharacterBody2D
class_name Player

# Constante variabelen voor de snelheid en sprongsnelheid van de speler.
const SPEED = 300.0
const JUMP_VELOCITY = -500.0

# Onready variabele die het sprite van de speler verwijst.
@onready var sprite_2d = $Sprite2D

# Haal de zwaartekrachtinstelling op uit de projectinstellingen zodat het consistent is met RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Functie die elke fysische frame wordt aangeroepen.
func _physics_process(delta):
	# Als de speler beweegt (snelheid in x-richting is niet nul), verander de animatie naar 'rennen'.
	if (velocity.x > 1 or velocity.x < -1):
		sprite_2d.animation = "running"
	else:
		sprite_2d.animation = "default"
	
	# Voeg de zwaartekracht toe aan de snelheid in de y-richting als de speler niet op de grond staat.
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation = "jumping"

	# Behandel de sprong als de sprongactie is ingedrukt en de speler op de grond staat.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Haal de invoerrichting op (links of rechts) en stel de snelheid in.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		# Verminder de snelheid geleidelijk naar nul als er geen invoer is.
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# Beweeg de speler en behandel botsingen.
	move_and_slide()

	# Flip de sprite horizontaal als de speler naar links beweegt.
	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft

# Functie die wordt aangeroepen wanneer de speler sterft.
func die() -> void:
	get_tree().reload_current_scene()
