extends TextureButton

func _ready():
	add_to_group("blocks")
	
func _on_red_generator_button_down():
	generate_block()
	
func generate_block():
	var block = preload("res://scenes/Blocks/Red/BlockRed.tscn").instantiate()
	block.position = position + Vector2(0, 50 * get_child_count())
	get_parent().add_child(block)

func delete():
	queue_free()
