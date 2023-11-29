extends Node2D


signal level_changed(level_name)
export (String) var level_name = "level"

onready var current_level = $Brker


func _ready():
	if Bruger.BrkOpg1 == true:
		$CompleteOpg1.visible = true

func _on_Opgave1_pressed():
	emit_signal("level_changed", level_name)

func _on_Opgave2_pressed():
	pass # Replace with function body.
