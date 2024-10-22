extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if($Player.position.y > 1000):
		get_tree().reload_current_scene()
	pass


func _on_kunci_body_entered(body):
	get_tree().change_scene_to_file("res://Level_1.tscn")
	pass # Replace with function body.
