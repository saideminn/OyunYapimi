extends KinematicBody2D

var Acik = false
export(int)var Sayi = 10
export(int)var Seviye = 1

var Kapali = true

func _ready():
	Global.connect("TurGec",self,"TURGEC")
	if Kapali:
		if Seviye==1:
			Sayi=10
			$TextureRect.texture=preload("res://Veri/Resimler/Asker.png")
			
		elif Seviye==2:
				Sayi=20
				$TextureRect.texture=preload("res://Veri/Resimler/ASKER 2.png")
				
		elif Seviye==3:
				Sayi=30
				$TextureRect.texture=preload("res://Veri/Resimler/ASKER 3.png")
				
		Kapali = false

func TURGEC():
	$TextureRect/TextureButton.visible=true

func _process(delta):
	if Global.Yemek<-9:
		queue_free()
	
	$ProgressBar.Value=Sayi
	if Sayi<1:
		position.x-=10000
		position.y+=10000
		if Seviye==1:
			Global.Yemek+=5
		elif Seviye==2:
			Global.Yemek+=10
		elif Seviye==3:
			Global.Yemek+=15
		queue_free()
	
	if $Node2D/RayCast2D.is_colliding():
		$"TextureRect/TextureButton2/Node2D3/1".visible=false
	else:
		$"TextureRect/TextureButton2/Node2D3/1".visible=true

	if $Node2D/RayCast2D2.is_colliding():
		$"TextureRect/TextureButton2/Node2D3/2".visible=false
	else:
		$"TextureRect/TextureButton2/Node2D3/2".visible=true
	
	if $Node2D/RayCast2D3.is_colliding():
		$"TextureRect/TextureButton2/Node2D3/3".visible=false
	else:
		$"TextureRect/TextureButton2/Node2D3/3".visible=true

	if $Node2D/RayCast2D4.is_colliding():
		$"TextureRect/TextureButton2/Node2D3/4".visible=false
	else:
		$"TextureRect/TextureButton2/Node2D3/4".visible=true

	if $Node2D/RayCast2D5.is_colliding():
		$"TextureRect/TextureButton2/Node2D3/5".visible=false
	else:
		$"TextureRect/TextureButton2/Node2D3/5".visible=true

	if $Node2D/RayCast2D6.is_colliding():
		$"TextureRect/TextureButton2/Node2D3/6".visible=false
	else:
		$"TextureRect/TextureButton2/Node2D3/6".visible=true

func _on_TextureButton_pressed():
	Acik=true
	$TextureRect2.visible=true
	$TextureRect/TextureButton2.visible=true
	$ProgressBar.visible=true
	$Node2D4.visible=true

func _on_TextureButton2_pressed():
	Acik=false
	$TextureRect2.visible=false
	$TextureRect/TextureButton2.visible=false
	$ProgressBar.visible=false
	$Node2D4.visible=false

func _on_1_pressed():
	position+=$Node2D2/Position2D.position
	Acik=false
	$TextureRect2.visible=false
	$TextureRect/TextureButton2.visible=false
	$TextureRect/TextureButton.visible=false
	$"Node2D4".visible=false

func _on_2_pressed():
	position+=$Node2D2/Position2D2.position
	Acik=false
	$TextureRect2.visible=false
	$TextureRect/TextureButton2.visible=false
	$TextureRect/TextureButton.visible=false
	$"Node2D4".visible=false

func _on_3_pressed():
	position+=$Node2D2/Position2D3.position
	Acik=false
	$TextureRect2.visible=false
	$TextureRect/TextureButton2.visible=false
	$TextureRect/TextureButton.visible=false
	$"Node2D4".visible=false

func _on_4_pressed():
	position+=$Node2D2/Position2D4.position
	Acik=false
	$TextureRect2.visible=false
	$TextureRect/TextureButton2.visible=false
	$TextureRect/TextureButton.visible=false
	$"Node2D4".visible=false

func _on_5_pressed():
	position+=$Node2D2/Position2D5.position
	Acik=false
	$TextureRect2.visible=false
	$TextureRect/TextureButton2.visible=false
	$TextureRect/TextureButton.visible=false
	$"Node2D4".visible=false

func _on_6_pressed():
	position+=$Node2D2/Position2D6.position
	Acik=false
	$TextureRect2.visible=false
	$TextureRect/TextureButton2.visible=false
	$TextureRect/TextureButton.visible=false
	$"Node2D4".visible=false

func _on_Area2D_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/11".visible=true
		$"TextureRect/TextureButton2/Node2D3/1".disabled=true

func _on_Area2D2_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/21".visible=true
		$"TextureRect/TextureButton2/Node2D3/2".disabled=true

func _on_Area2D3_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/31".visible=true
		$"TextureRect/TextureButton2/Node2D3/3".disabled=true

func _on_Area2D4_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/41".visible=true
		$"TextureRect/TextureButton2/Node2D3/4".disabled=true

func _on_Area2D5_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/51".visible=true
		$"TextureRect/TextureButton2/Node2D3/5".disabled=true

func _on_Area2D6_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/61".visible=true
		$"TextureRect/TextureButton2/Node2D3/6".disabled=true


func _on_Area2D_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/11".visible=false
		$"TextureRect/TextureButton2/Node2D3/1".disabled=false

func _on_Area2D2_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/21".visible=false
		$"TextureRect/TextureButton2/Node2D3/2".disabled=false

func _on_Area2D3_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/31".visible=false
		$"TextureRect/TextureButton2/Node2D3/3".disabled=false

func _on_Area2D4_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/41".visible=false
		$"TextureRect/TextureButton2/Node2D3/4".disabled=false

func _on_Area2D5_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/51".visible=false
		$"TextureRect/TextureButton2/Node2D3/5".disabled=false

func _on_Area2D6_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D4/61".visible=false
		$"TextureRect/TextureButton2/Node2D3/6".disabled=false


func _on_11_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D4".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D5/KinematicBody2D".visible=true
	$"Node2D5/KinematicBody2D2".visible=false
	$"Node2D5/KinematicBody2D3".visible=false
	$"Node2D5/KinematicBody2D4".visible=false
	$"Node2D5/KinematicBody2D5".visible=false
	$"Node2D5/KinematicBody2D6".visible=false
	$"Node2D5/KinematicBody2D/AnimationPlayer".play("A")
	$"Node2D5/KinematicBody2D/CollisionShape2D".disabled=false
	$"Timer".start()
	$"TextureRect2".visible=false

func _on_21_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D4".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D5/KinematicBody2D".visible=false
	$"Node2D5/KinematicBody2D2".visible=true
	$"Node2D5/KinematicBody2D3".visible=false
	$"Node2D5/KinematicBody2D4".visible=false
	$"Node2D5/KinematicBody2D5".visible=false
	$"Node2D5/KinematicBody2D6".visible=false
	$"Node2D5/KinematicBody2D2/AnimationPlayer".play("A")
	$"Node2D5/KinematicBody2D2/CollisionShape2D".disabled=false
	$"Timer2".start()
	$"TextureRect2".visible=false

func _on_31_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D4".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D5/KinematicBody2D".visible=false
	$"Node2D5/KinematicBody2D2".visible=false
	$"Node2D5/KinematicBody2D3".visible=true
	$"Node2D5/KinematicBody2D4".visible=false
	$"Node2D5/KinematicBody2D5".visible=false
	$"Node2D5/KinematicBody2D6".visible=false
	$"Node2D5/KinematicBody2D3/AnimationPlayer".play("A")
	$"Node2D5/KinematicBody2D3/CollisionShape2D".disabled=false
	$"Timer3".start()
	$"TextureRect2".visible=false

func _on_41_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D4".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D5/KinematicBody2D".visible=false
	$"Node2D5/KinematicBody2D2".visible=false
	$"Node2D5/KinematicBody2D3".visible=false
	$"Node2D5/KinematicBody2D4".visible=true
	$"Node2D5/KinematicBody2D5".visible=false
	$"Node2D5/KinematicBody2D6".visible=false
	$"Node2D5/KinematicBody2D4/AnimationPlayer".play("A")
	$"Node2D5/KinematicBody2D4/CollisionShape2D".disabled=false
	$"Timer4".start()
	$"TextureRect2".visible=false

func _on_51_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D4".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D5/KinematicBody2D".visible=false
	$"Node2D5/KinematicBody2D2".visible=false
	$"Node2D5/KinematicBody2D3".visible=false
	$"Node2D5/KinematicBody2D4".visible=false
	$"Node2D5/KinematicBody2D5".visible=true
	$"Node2D5/KinematicBody2D6".visible=false
	$"Node2D5/KinematicBody2D5/AnimationPlayer".play("A")
	$"Node2D5/KinematicBody2D5/CollisionShape2D".disabled=false
	$"Timer5".start()
	$"TextureRect2".visible=false

func _on_61_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D4".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D5/KinematicBody2D".visible=false
	$"Node2D5/KinematicBody2D2".visible=false
	$"Node2D5/KinematicBody2D3".visible=false
	$"Node2D5/KinematicBody2D4".visible=false
	$"Node2D5/KinematicBody2D5".visible=false
	$"Node2D5/KinematicBody2D6".visible=true
	$"Node2D5/KinematicBody2D6/AnimationPlayer".play("A")
	$"Node2D5/KinematicBody2D6/CollisionShape2D".disabled=false
	$"Timer6".start()
	$"TextureRect2".visible=false

func _on_Timer_timeout():
	$"Node2D5/KinematicBody2D/CollisionShape2D".disabled=true
	$"Node2D5/KinematicBody2D".visible=false
	$"Timer".stop()

func _on_Timer2_timeout():
	$"Node2D5/KinematicBody2D2/CollisionShape2D".disabled=true
	$"Node2D5/KinematicBody2D2".visible=false
	$"Timer2".stop()

func _on_Timer3_timeout():
	$"Node2D5/KinematicBody2D3/CollisionShape2D".disabled=true
	$"Node2D5/KinematicBody2D3".visible=false
	$"Timer3".stop()

func _on_Timer4_timeout():
	$"Node2D5/KinematicBody2D4/CollisionShape2D".disabled=true
	$"Node2D5/KinematicBody2D4".visible=false
	$"Timer4".stop()

func _on_Timer5_timeout():
	$"Node2D5/KinematicBody2D5/CollisionShape2D".disabled=true
	$"Node2D5/KinematicBody2D5".visible=false
	$"Timer5".stop()

func _on_Timer6_timeout():
	$"Node2D5/KinematicBody2D6/CollisionShape2D".disabled=true
	$"Node2D5/KinematicBody2D6".visible=false
	$"Timer6".stop()



func _on_Area2D22_body_entered(body):
	if body.is_in_group("Düşman 2"):
		Sayi-=5

func _on_Area2D22_body_exited(body):
	pass # Replace with function body.
