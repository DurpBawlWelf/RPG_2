extends Control

@onready var attack_button = $AttackButton

func _ready() -> void:
	attack_button.button_down.connect(send_attack)
	
func send_attack() -> void:
	emit_signal("attack")
