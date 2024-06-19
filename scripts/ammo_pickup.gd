extends Area2D


@onready var game_manager = %GameManager
# Called when the node enters the scene tree for the first time.
func _ready():
	#var gameManager = GameManager()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_body_entered(otherBody):
	game_manager.add_ammo(1)

	queue_free()
	
