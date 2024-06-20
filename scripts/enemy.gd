extends Area2D

@onready var player = $"../Player"

const SPEED = 20

var player_pos = Vector2()

#control movement
func _physics_process(delta):
	var current_pos = global_position
	if player:
		player_pos = player.global_position
		var direction = (player_pos - current_pos).normalized()
		global_position += direction * delta * SPEED

#Check bullet area
func _on_area_entered(area):
	#change to animation (brackeys)
	queue_free()

#Check player collision
func _on_body_entered(body):
	player.add_paranoia(1)
	#change to animation (brackeys)
	queue_free()



