extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spikes_2_body_entered(body):
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_pintu_keluar_body_entered(body):
	get_tree().change_scene_to_file("res://level_3_cave.tscn")
	pass # Replace with function body.
