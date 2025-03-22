extends GeneralGate

func _ready() -> void:
	# sets up the data
	gate_data[0][1] = 1
	gate_data[1][0] = 1
	
	print(gate_data)
	
func get_sprite():
	return $Sprite2D.texture
