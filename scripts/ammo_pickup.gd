extends Area2D

@onready var player = $"../Player"
@onready var game_manager = %GameManager

func _on_body_entered(body):
	player.add_ammo()
	#Switch line below to an animation (Silimar to brackeys tutorial) for audio + more
	queue_free()
	

	
	
