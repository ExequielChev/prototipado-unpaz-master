extends TextureButton


func _on_button_down():
	var blocks = get_tree().get_nodes_in_group("blocks")
	for block in blocks:
		block.delete()
