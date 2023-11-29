extends Node2D


signal level_changed(level_name)
export (String) var level_name = "level"

onready var current_level = $BrkerOpg1


var awn1 = false
var awn2 = false
var awn3 = true
var awn4 = false
var awn5 = true

var but1 = 0
var but2 = 0
var but3 = 0
var but4 = 0
var but5 = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_Button_pressed():
	but1 += 1


func _on_Button2_pressed():
	but2 += 1


func _on_Button3_pressed():
	but3 += 1


func _on_Button4_pressed():
	but4 += 1


func _on_Button5_pressed():
	but5 += 1


func _on_CheckAwnser_pressed():
	if but1%2 == 1:
		if awn1 == true:
			$Corect1.visible=true
		else:
			$Wrong1.visible=true

	if but2%2 == 1:
		if awn2 == true:
			$Corect2.visible=true
		else:
			$Wrong2.visible=true

	if but3%2 == 1:
		if awn3 == true:
			$Corect3.visible=true
		else:
			$Wrong3.visible=true

	if but4%2 == 1:
		if awn4 == true:
			$Corect4.visible=true
		else:
			$Wrong4.visible=true

	if but5%2 == 1:
		if awn5 == true:
			$Corect5.visible=true
		else:
			$Wrong5.visible=true
	
	if $Corect5.visible==true and $Corect3.visible==true:
		$Button6.visible=true


func _on_Button6_pressed():
	Bruger.BrkOpg1 = true
	emit_signal("level_changed", level_name)

