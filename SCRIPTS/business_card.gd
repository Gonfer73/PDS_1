extends Node2D


func _ready():
	$space_icon.play()

func _input(_event):
	if Input.is_action_pressed("ui_accept"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")
	
	
