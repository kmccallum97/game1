extends Sprite3D

var coins = 5
var player_name = "robot" 
var hearts = 3.5
const SPEED = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	print(add_these_numbers(5,6))
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	check_input()
	
func add_these_numbers(x, y):
	var sum = x + y
	return sum
	
#will spin the icon depending on arrow key < or >
func check_input():
	if Input.is_action_pressed("ui_left"):
		rotate_y(deg_to_rad(-SPEED))
	elif Input.is_action_pressed("ui_right"):
		rotate_y(deg_to_rad(SPEED))
