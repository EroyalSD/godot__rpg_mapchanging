extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func change_map(new_map_path,new_map_pos=Vector2()):
	var player = $player
	var map = $map_container.get_child(0)
	map.queue_free()
	
	
	var new_map = load(new_map_path).instance()
	$map_container.add_child(new_map)
	player.position = new_map_pos
