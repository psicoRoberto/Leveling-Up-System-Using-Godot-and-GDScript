extends Node

onready var Xp =$XP
onready var Lv =$LV
onready var Clicks=$Clicks

func _ready():
	var Add3Xp = get_node("Add3Xp")
	Add3Xp.connect("pressed", self, "_on_Add3Xp_pressed")
	
var ClicksValue = 0
var XpValue = 0
var LvValue = 0

func _on_Add3Xp_pressed():
	ClicksValue = ClicksValue + 3
	Clicks.text = "Total XP " + str(ClicksValue)
	XpValue = XpValue + 3
	Xp.text = "XP " + str(XpValue)
	
	if XpValue >= 10:
		XpValue = XpValue -10
		Xp.text = "XP " + str(XpValue)
		LvValue = LvValue + 1
	Lv.text = "LV " + str(LvValue)
	
func _on_AddXp_pressed():
	ClicksValue = ClicksValue + 1
	Clicks.text = "Total XP " + str(ClicksValue)
	XpValue = XpValue + 1
	Xp.text = "XP " + str(XpValue)
	
	if XpValue >= 10:
		XpValue = XpValue - 10
		Xp.text = "XP " + str(XpValue)
		LvValue = LvValue + 1
	Lv.text = "LV " + str(LvValue)
