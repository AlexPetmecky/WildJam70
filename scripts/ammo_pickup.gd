extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#var gameManager = GameManager()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_body_entered(otherBody):
	#gameManager.add
	
	queue_free()
	
