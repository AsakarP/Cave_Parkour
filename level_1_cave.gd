extends Node2D

var player_death_effect = preload("res://death_effect.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pintu_keluar_body_entered(body):
	get_tree().change_scene_to_file("res://level_2.tscn")
	pass # Replace with function body.
