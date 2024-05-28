extends Node2D

@export var MAX_HP := 15
@export var current_hp := 15
@export var strenght := 3
@onready var interface = $Interface

signal sig_attack(damage: int)

func _ready() -> void:
	$Interface/HP.text = str(MAX_HP)
	$Interface/AttackButton.button_down.connect(attack)

func attack() -> void:
	sig_attack.emit(strenght)
	
func take_damage(damage : int) -> void:
	current_hp = max(0, current_hp - damage)
	$Interface/HP.text = str(current_hp)
