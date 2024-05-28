extends Node

@onready var wolf = $Wolf
@onready var wolf_2 = $Wolf2

func _ready() -> void:
	$Wolf2/Sprite.flip_h = true
	deal_damage(wolf.sig_attack.connect(deal_damage))
	
func _process(delta) -> void:
	pass
	
func deal_damage(damage) -> void:
	print(damage)
	wolf.take_damage(damage)
