extends Sprite2D

@export var MAX_HP := 10
@export var current_hp := 10
@export var dmg := 2

func _ready() -> void:
	$HUD/hp.text = str(MAX_HP)
	
func get_hit(damage : int) -> void:
	current_hp = max(0, current_hp - damage)
	$HUD/hp.text = str(current_hp)
	
func attack() -> int:
	return dmg

