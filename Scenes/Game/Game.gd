extends Node2D

@export var new_die: PackedScene = preload("res://Scenes/Game/Dice.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_die()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn_die() -> void:
	var new_die_instance: Dice = new_die.instantiate()
	add_child(new_die_instance)
	

func _on_spawn_timer_timeout() -> void:
	spawn_die()
