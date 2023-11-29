extends Node2D

signal level_changed(level_name)
export (String) var level_name = "level"

onready var current_level = $Brøker

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Opgave1_pressed():
	emit_signal("level_changed", level_name)

func _on_Opgave2_pressed():
	pass # Replace with function body.
