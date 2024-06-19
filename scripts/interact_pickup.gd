extends Area2D

var pickup_active = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_body_entered(otherBody):
	#show pickup key
	if "player" in otherBody.name:
		pickup_active = true
		
func _on_body_exited(otherBody):
	#show pickup key
	if "player" in otherBody.name:
		pickup_active = false


	
