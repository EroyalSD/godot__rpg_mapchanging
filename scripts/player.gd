extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 100

func _ready():
	
	set_physics_process(true)

func _physics_process(delta):
	
	var move_x = 0
	var move_y = 0
	
	if Input.is_key_pressed(KEY_W): move_y -= 1
	if Input.is_key_pressed(KEY_S): move_y += 1
	if Input.is_key_pressed(KEY_A): move_x -= 1
	if Input.is_key_pressed(KEY_D): move_x += 1
	
	var movement = Vector2(move_x,move_y) * speed * delta
	
	move_and_collide(movement)
	
