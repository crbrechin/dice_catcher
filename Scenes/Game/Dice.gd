class_name Dice

extends Area2D

@onready var speed := randf_range(60, 120)

@onready var dice: Sprite2D = $Dice
@onready var rotation_speed := randf_range(-20.0, 20.0)
# dice texture width: 71.0px
@onready var offset = 71.0 / 2.0 # Adjust end-of-screen collision

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = - 2.0 * offset
	position.x = randf_range(
		get_viewport_rect().position.x + 1.3 * offset,
		get_viewport_rect().end.x - 1.3 * offset
		)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	position.y += speed * delta
	dice.rotate(rotation_speed * delta)
	#check_off_screen()
	
func check_off_screen() -> void:
	if position.y > get_viewport_rect().end.y + offset:
		get_tree().paused = true
