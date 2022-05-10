extends Area2D

var Alan_ = false
var L = false

var D = false

var Sayiiiii = 0

func _ready():
	Global.connect("TurGec",self,"TURGEC")

func TURGEC():
	pass

func _process(delta):
	if $"Polygon2D".color==Color8(0,133,2,255):
		$Button.visible=true
		Sayiiiii=0
	elif $"Polygon2D".color==Color8(255,0,0,255):
		$Button.visible=false
		Sayiiiii=1

func _on_ALAN_body_entered(body):
	if body.is_in_group("Ben"):
		if $"Polygon2D".color==Color8(0,133,2,255):
			pass
		elif $"Polygon2D".color==Color8(255,0,0,255):
			Global.Gelir+=1
			Global.Dusman_Gelir-=1
			$"Polygon2D".color=Color8(0,133,2,255)
			D = true
			
	if body.is_in_group("Düşman"):
		if Sayiiiii==1:
			pass
		elif Sayiiiii==0:
			Global.Gelir-=1
			$"Polygon2D".color=Color8(255,0,0,255)
			Global.Dusman_Gelir+=1
			L = true

func _on_ALAN_body_exited(body):
	if body.is_in_group("Ben"):
		if L ==true:
			pass
	elif body.is_in_group("Düşman"):
		L = false
		
	if body.is_in_group("Düşman"):
		if D ==true:
			pass
	elif body.is_in_group("Ben"):
		D = false

func _on_Button_pressed():
	$CanvasLayer/Control.visible=true

func _on_EGIT_pressed():
	$CanvasLayer/Control/Control2.visible=true

func _on_INSAAT_pressed():
	pass # Replace with function body.

func _on_CARPI_pressed():
	$CanvasLayer/Control.visible=false


func _on_ASKER1_pressed():
	if Global.Para>19:
		var MM = get_tree().get_current_scene()
		MM.name="BOLUM 1"
		var tilemap = MM.Node2D2
		var Asker = preload("res://Veri/Sahneler/BENIM ASKER.tscn").instance()
		Asker.global_position=$Position2D.global_position
		Asker.Seviye=1
		MM.Node2D2.add_child(Asker)
		Global.Para-=20
		Global.Yemek-=5
		$CanvasLayer/Control.visible=false

func _on_ASKER2_pressed():
	if Global.Para>39:
		var MM = get_tree().get_current_scene()
		MM.name="BOLUM 1"
		var tilemap = MM.Node2D2
		var Asker = preload("res://Veri/Sahneler/BENIM ASKER.tscn").instance()
		Asker.global_position=$Position2D.global_position
		Asker.Seviye=2
		MM.Node2D2.add_child(Asker)
		Global.Para-=40
		Global.Yemek-=10
		$CanvasLayer/Control.visible=false

func _on_ASKER3_pressed():
	if Global.Para>59:
		var MM = get_tree().get_current_scene()
		MM.name="BOLUM 1"
		var tilemap = MM.Node2D2
		var Asker = preload("res://Veri/Sahneler/BENIM ASKER.tscn").instance()
		Asker.global_position=$Position2D.global_position
		Asker.Seviye=3
		MM.Node2D2.add_child(Asker)
		Global.Para-=60
		Global.Yemek-=15
		$CanvasLayer/Control.visible=false

func _on_CARPI2_pressed():
	$CanvasLayer/Control/Control2.visible=false


func _on_ALAN_area_entered(area):
	pass

func _on_ALAN_area_exited(area):
	pass
