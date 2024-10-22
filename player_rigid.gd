extends RigidBody2D


@export
var speed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var h = Input.get_axis("ui_left","ui_right")
	var v = Input.get_axis("ui_up","ui_down")
	

	var movement=Vector2(h,v)
	linear_velocity = movement * speed
	
	#add_constant_central_force(movement*speed)
	#apply_central_impulse(movement*speed)
	
	pass
