extends Node2D

func _input(event):
	if event.is_action_pressed("action"):
		print(Blink.number_called)

func _process(_delta):
	if Blink.telephone_number.size() == 9:
		Blink.number_called = Blink.telephone_number[0] + Blink.telephone_number[1] + Blink.telephone_number[2] + Blink.telephone_number[3] + Blink.telephone_number[4] + Blink.telephone_number[5] + Blink.telephone_number[6] + Blink.telephone_number[7] + Blink.telephone_number[8]


func _on_Button_1_pressed():
	Blink.telephone_number.append("1")


func _on_Button_2_pressed():
	Blink.telephone_number.append("2")


func _on_Button_3_pressed():
	Blink.telephone_number.append("3")


func _on_Button_4_pressed():
	Blink.telephone_number.append("4")


func _on_Button_5_pressed():
	Blink.telephone_number.append("5")


func _on_Button_6_pressed():
	Blink.telephone_number.append("6")


func _on_Button_7_pressed():
	Blink.telephone_number.append("7")


func _on_Button_8_pressed():
	Blink.telephone_number.append("8")


func _on_Button_9_pressed():
	Blink.telephone_number.append("9")
