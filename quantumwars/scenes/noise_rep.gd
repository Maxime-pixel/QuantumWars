class_name NoiseRep
extends Node2D

@onready var x_rep: Sprite2D = $X_rep
@onready var z_rep: Sprite2D = $Z_rep
@onready var zx_rep: Sprite2D = $ZX_rep


var noise_state = Vector2(0, 0);

func hide_all() -> void:
	x_rep.visible = false
	z_rep.visible = false
	zx_rep.visible = false
	
	

func update_representation(new_state:Vector2) -> void:
	hide_all()
	noise_state = new_state
	if noise_state == Vector2(1, 0):
		x_rep.visible = true
	elif noise_state == Vector2(0, 1):
		z_rep.visible = true
	elif noise_state == Vector2(1, 1):
		zx_rep.visible = true
	# keep it hidden for 0, 0
