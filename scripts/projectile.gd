extends CharacterBody2D

const SPEED = 100
var pro_velocity = Vector2()
var dir = Vector2()


func _physics_process(delta):
	position += dir * SPEED * delta

func get_direction(direction):
	dir = direction
