extends Node2D

var npc_position = 0

func _input(_event):
	if Input.is_action_pressed("inventory"):
		Blink.inventory_house = true 
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

func _process(_delta):
	Blink.position_p = $player.position
	if Input.is_action_pressed("action") and Blink.npc_witness_1:
		Blink.talking = true
		$npc_witness_1_talk.show()
		$npc_witness_1_talk/icon_npc_witness_1/ask_1.show()
		$npc_witness_1_talk/icon_npc_witness_1/text_2_npc_witness_1.hide()
		$npc_witness_1_talk/icon_npc_witness_1/text_3_npc_witness_1.hide()
		$e_icon.hide()

func _ready():
	if Blink.just_enter_house_building_1:
		randomize()
		npc_position =int(rand_range(0, 4))
		if npc_position == 0:
			Blink.npc_house_building_1_p = 0
			$npc_witness.position = Vector2(1440, 672)
		elif npc_position == 1:
			Blink.npc_house_building_1_p = 1
			$npc_witness.position = Vector2(592, 608)
		elif npc_position == 2:
			Blink.npc_house_building_1_p = 2
			$npc_witness.position = Vector2(784, 144)
		elif npc_position == 3:
			Blink.npc_house_building_1_p = 3
			$npc_witness.position = Vector2(416, 160)
		Blink.just_enter_house_building_1 = false
	if Blink.just_enter_house_building_1 == false:
		if Blink.npc_house_building_1_p == 0:
			$npc_witness.position = Vector2(1440, 672)
		elif Blink.npc_house_building_1_p == 1:
			$npc_witness.position = Vector2(592, 608)
		elif Blink.npc_house_building_1_p == 2:
			$npc_witness.position = Vector2(784, 144)
		elif Blink.npc_house_building_1_p == 3:
			$npc_witness.position = Vector2(416, 160)
	if Blink.inventory_house:
		$player.position = Blink.position_p
		Blink.inventory_house = false
	


func _on_area_npc_witness_body_entered(_body):
	Blink.npc_witness_1 = true
	$e_icon.show()


func _on_area_npc_witness_body_exited(_body):
	Blink.npc_witness_1 = false
	$e_icon.hide()
