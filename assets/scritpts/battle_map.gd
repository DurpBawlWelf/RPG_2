extends Node2D

func _ready():
	$Button.button_down.connect(attack)

func attack() -> void:
	$character.get_hit($enemy.attack())

