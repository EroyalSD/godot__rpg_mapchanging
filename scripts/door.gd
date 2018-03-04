extends Area2D

export(String, FILE) var map

export(Vector2) var position_in_map = Vector2(0,0)

func _ready():
	connect("body_entered",self,"request_map_change")
	pass

func request_map_change(body):
	if get_tree().root.get_child(0).name == "world" and map:
		get_tree().root.get_child(0).change_map(map,position_in_map)