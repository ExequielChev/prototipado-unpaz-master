extends TextureButton

func _ready():
	pass
	
func _on_button_down():
	generate_block()
	
func generate_block():
	var block = preload("res://scenes/Blocks/Violet/BlockViolet.tscn").instantiate()
	block.name = "Block_Violeta_%s" % str(randi()) # Le a asignamos nombre unico.
	block.position = position + Vector2(0, 50)
	block.add_to_group("blocks")
	get_parent().add_child(block)


func delete():
	queue_free()
