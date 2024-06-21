extends CharacterBody2D

@onready var player
@onready var projectile = load("res://Scenes/projectile.tscn")

const SPEED = 50.0

#variables for game mechanics
var ammo = 5
var paranoia = 0



# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var shoot_direction = Vector2(1,0)
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var marker_2d = $Marker2D


func _physics_process(delta):
	var x_axis = Input.get_axis("left", "right")
	var y_axis = Input.get_axis("up", "down")
	var input := Vector2(x_axis,y_axis)
	
	position += input * SPEED * delta
	move_and_slide()

func _process(delta):
	direction_check()
	if (Input.is_action_just_pressed("shoot") and ammo > 0):
		shoot()
		
func shoot():
	var bullet = projectile.instantiate()
	bullet.position = marker_2d.global_position
	bullet.rotation = marker_2d.global_rotation
	bullet.get_direction(shoot_direction)
	get_parent().add_child(bullet)
	ammo -= 1
	print_debug("shooting")
	
	

func direction_check():
	if Input.is_action_pressed("up"):
		shoot_direction = Vector2(0,-1)
		animated_sprite_2d.play("up")
	elif Input.is_action_pressed("down"):
		shoot_direction = Vector2(0,1)
		animated_sprite_2d.play("Idle")
	elif Input.is_action_pressed("left"):
		shoot_direction = Vector2(-1,0)
		animated_sprite_2d.play("left")
	elif Input.is_action_pressed("right"):
		shoot_direction = Vector2(1,0)
		animated_sprite_2d.play("right")
		
func add_ammo():
	print_debug("Ammo Added")
	ammo += 5
	
func add_paranoia(amt):
	paranoia += amt
