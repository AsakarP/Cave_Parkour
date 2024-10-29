extends Area2D

# Code dapat dari youtube
func _on_body_entered(body):
	if body.is_in_group("Player"):	
		body.set_position($Destinasi.global_position)
