extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	for item in $Spike_death.get_children():
		item.connect("body_entered", _on_long_spike_1_body_entered)
		pass
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pintu_keluar_body_entered(body):
	get_tree().change_scene_to_file("res://ending.tscn")
	pass # Replace with function body.


func _on_long_spike_1_body_entered(body):
	get_tree().reload_current_scene()
	pass # Replace with function body.
