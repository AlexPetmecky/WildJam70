extends CharacterBody2D


const SPEED = 300.0
const ROTATION_SPEED = 1.5
const JUMP_VELOCITY = -400.0


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var move_input_ud = Input.get_axis("up", "down")
	var move_input_rl = Input.get_axis("left", "right")
	if(move_input_rl == 0):
		velocity = transform.y * move_input_ud * SPEED
	else:
		velocity = transform.x * move_input_rl * SPEED
	
	
	
	#rotation += rotation_direction * ROTATION_SPEED * delta
	
	

	
	
	
	
	# Add the gravity.
	#if not is_on_floor():
	#	velocity.y += gravity * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	#	velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
	#	velocity.x = direction * SPEED
	#else:
	#	velocity.x = move_toward(velocity.x, 0, SPEED)

	
	move_and_slide()
