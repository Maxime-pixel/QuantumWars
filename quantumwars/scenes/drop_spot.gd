extends TextureRect


var preview_size = Vector2(30, 30)
var holded_gate = null

func _get_drag_data(at_position: Vector2) -> Variant:
	if holded_gate == null:
		return null
	var preview_texture = TextureRect.new()
	preview_texture.texture = texture
	preview_texture.expand_mode = 1
	preview_texture.size = preview_size
	
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	set_drag_preview(preview)
	
	# to make og disapear
	texture = null
	holded_gate = null
	
	return holded_gate
	
func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return data is GeneralGate
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	holded_gate = data
	texture = data.get_sprite()
