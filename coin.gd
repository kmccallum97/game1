extends Area3D

const ROT_SPEED = 2 #the number of deg the coin rotates per frame

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(ROT_SPEED)) 
	

func _on_body_entered(body):
	queue_free()
