extends Label
@onready var player = $"../Player"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "AMMO: "+str(player.ammo)
