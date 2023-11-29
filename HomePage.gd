extends Node2D

signal level_changed(level_name)
export (String) var level_name = "level"

onready var current_level = $HomePage

#var BrkOpg1 = false


func _on_Brker_pressed():
	emit_signal("level_changed", level_name)


func _on_Funktioner_pressed():
	pass # Replace with function body.


func _on_Ligninger_pressed():
	pass # Replace with function body.
