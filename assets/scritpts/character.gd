extends Sprite2D

@export var MAX_HP := 8
@export var current_hp := 8
@export var dmg := 4
@onready var hud = $Hud

func _ready() -> void:
	$HUD/hp.text = str(MAX_HP)
	
func get_hit(damage : int) -> void:
	current_hp = max(0, current_hp - damage)
	$HUD/hp.text = str(current_hp)

func attack() -> int:
	return dmg
