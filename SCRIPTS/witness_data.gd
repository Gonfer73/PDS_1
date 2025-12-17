extends Node2D




func _on_Button_pressed():
	if Blink.bad:#si el botón presionado es el de imputado pasará esto
		Blink.bad = false
		if $witness_1.text != "NOMBRE COMPLETO":
			Blink.prisioners_nm.push_front($witness_1.text)
			Blink.info_possible_2 = true
		if $witness_2.text != "EDAD":
			Blink.prisioners_age.push_front($witness_2.text)
			Blink.info_possible_2 = true
	# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/case_!_2.tscn")
	if Blink.good:#si el botón presionado es el de testigo pasará esto
		Blink.good = false
		if $witness_1.text != "NOMBRE COMPLETO":
			Blink.witness_nm.push_front($witness_1.text)
			Blink.info_possible_1 = true
		if $witness_2.text != "EDAD":
			Blink.witness_age.push_front($witness_2.text)
			Blink.info_possible_1 = true
	# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/case_!_2.tscn")




func _on_better_not_pressed():
# warning-ignore:return_value_discarded
	hide()
