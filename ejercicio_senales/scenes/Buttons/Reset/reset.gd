extends TextureButton

func _on_button_down():
	var blocks = get_tree().get_nodes_in_group("blocks")
	for block in blocks:
		if block.name.begins_with("Block_"):
			block.queue_free()
			
	var menu_node = get_node("../../Menu")
	if menu_node:
		menu_node.delete()
