extends Node2D

onready var current_level = $HomePage

func _ready():
	current_level.connect("level_changed", self, "handle_level_changed")

func handle_level_changed(current_level_name: String):
	var next_level
	match current_level_name:
		"Home":
			next_level = load("res://Brker.tscn").instance()
		"Brker":
			next_level = load("res://BrkerOpg1.tscn").instance()
		"BrkerOpg1":
			next_level = load("res://Brker.tscn").instance()
		_:
			return
	add_child(next_level)
	next_level.connect("level_changed", self, "handle_level_changed")
	current_level.queue_free()
	current_level = next_level
	#transfer_data_between_scenes(current_level, next_level)

#func transfer_data_between_scenes(old_scene, new_scene):
	#new_scene.BrkOpg1 = old_scene.BrkOpg1
