extends TextureButton


func _on_red_generator_button_down():
	generate_block()
	
func generate_block():
	var block = preload("res://scenes/Blocks/Red/BlockRed.tscn").instantiate()
	block.position = position + Vector2(0, 50 * get_child_count())
	get_parent().add_child(block)
