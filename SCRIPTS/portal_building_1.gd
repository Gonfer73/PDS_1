extends Node2D

<<<<<<< HEAD
=======
var l_position = Vector2(1040, 416)

func _ready():
	if Blink.lift:
		$player.position = l_position
>>>>>>> 27d8733 (Fixed bugs related to first case)



func _on_exit_street_body_entered(_body):
<<<<<<< HEAD
=======
	Blink.lift = false
>>>>>>> 27d8733 (Fixed bugs related to first case)
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/street_2.tscn")


func _on_enter_lift_1_body_entered(_body):
# warning-ignore:return_value_discarded
<<<<<<< HEAD
	get_tree().change_scene("res://SCENES/corridor_1.tscn")
=======
	get_tree().change_scene("res://SCENES/lift_building_1.tscn")
>>>>>>> 27d8733 (Fixed bugs related to first case)


func _on_enter_lift_2_body_entered(_body):
# warning-ignore:return_value_discarded
<<<<<<< HEAD
	get_tree().change_scene("res://SCENES/corridor_1.tscn")
=======
	get_tree().change_scene("res://SCENES/lift_building_1.tscn")
>>>>>>> 27d8733 (Fixed bugs related to first case)
