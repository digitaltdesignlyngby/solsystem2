extends Sprite

export var bane_hast = 0.01
export var rotations_hast = -0.01

func _ready():
	pass # Replace with function body.

func _process(delta):
	position = position.rotated(bane_hast)
	rotation -= rotations_hast
	pass
