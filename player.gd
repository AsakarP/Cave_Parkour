extends CharacterBody2D

@export
var speed : float
const GRAVITY : float = 9.8
const JUMP_SPEED : float = -300
var isJumping : bool = false
var JumpCount = 0

func _physics_process(delta):
	if (!is_on_floor()): # Kalau di udara
		velocity.y += GRAVITY # kurangin kecepatan vertikal sebayak Gravitasi terus menerus
	else: # kalau nyetuh tanah
		isJumping = false #tidak lagi loncat
	
	var h = Input.get_axis("ui_left","ui_right")
	#var v = Input.get_axis("ui_up","ui_down")
	
	
	var movement=Vector2(h*speed,velocity.y)
	if( JumpCount < 1 and(Input.is_action_just_pressed("ui_accept"))):
		JumpCount += 1
		movement.y = JUMP_SPEED # kita bikin loncat
		isJumping = true #Kita tandai sedang loncat
	
	if (is_on_floor()):
		JumpCount = 0
	
		
	velocity = movement  #movement = gabungan gerakan horizontal + gerakan vertikal
	
	if (isJumping == true):
		if (h == 0):
			pass
		elif (h >= 0):
			$Character.flip_h = false
		else:
			$Character.flip_h = true
		$Character.play("Loncat")
	elif (h != 0):
		if (h == 0):
			pass
		elif(h >= 0):
			$Character.flip_h = false
		else:
			$Character.flip_h = true
		$Character.play("Jalan")
	else:
		$Character.play("Idle")
	move_and_slide()
	
	pass


func _on_pintu_masuk_body_entered(body):
	get_tree().change_scene_to_file("res://Level_2.tscn")
	pass # Replace with function body.
