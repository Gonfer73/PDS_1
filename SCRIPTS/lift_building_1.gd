extends Node2D

var button = false



func _on_button_1_pressed():
<<<<<<< HEAD
	if button == false:
		button = true
		$warning_lb.show()
		yield(get_tree().create_timer(1), "timeout")
		$warning_lb.hide()
		button = false

=======
	Blink.lift = true
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/portal_building_1.tscn")
>>>>>>> 27d8733 (Fixed bugs related to first case)

func _on_button_2_pressed():
	if button == false:
		button = true
		$warning_lb.show()
		yield(get_tree().create_timer(1), "timeout")
		$warning_lb.hide()
		button = false


func _on_button_4_pressed():
	if button == false:
		button = true
		$warning_lb.show()
		yield(get_tree().create_timer(1), "timeout")
		$warning_lb.hide()
		button = false


func _on_button_3_pressed():
	if button == false:
<<<<<<< HEAD
=======
# warning-ignore:return_value_discarded
>>>>>>> 27d8733 (Fixed bugs related to first case)
		get_tree().change_scene("res://SCENES/corridor_1.tscn")
