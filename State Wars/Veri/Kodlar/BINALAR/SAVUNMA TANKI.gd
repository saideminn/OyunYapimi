extends Area2D

var Sayi = 0

var Birlik = 30

func _process(delta):
	$ProgressBar.Value=Birlik
	if Birlik<1:
		queue_free()

func _ready():
	Global.connect("TurGec",self,"TURGEC")
	
func TURGEC():
	$"TextureRect/TextureButton".visible=true

func _on_Area2D_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/1".visible=true

func _on_Area2D2_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/2".visible=true

func _on_Area2D3_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/3".visible=true

func _on_Area2D4_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/4".visible=true

func _on_Area2D5_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/5".visible=true

func _on_Area2D6_body_entered(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/6".visible=true


func _on_Area2D_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/1".visible=false

func _on_Area2D2_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/2".visible=false

func _on_Area2D3_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/3".visible=false

func _on_Area2D4_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/4".visible=false

func _on_Area2D5_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/5".visible=false

func _on_Area2D6_body_exited(body):
	if body.is_in_group("Düşman"):
		$"Node2D3/6".visible=false


func _on_1_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D3".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D4/KinematicBody2D".visible=true
	$"Node2D4/KinematicBody2D2".visible=false
	$"Node2D4/KinematicBody2D3".visible=false
	$"Node2D4/KinematicBody2D4".visible=false
	$"Node2D4/KinematicBody2D5".visible=false
	$"Node2D4/KinematicBody2D6".visible=false
	$"Node2D4/KinematicBody2D/AnimationPlayer".play("A")
	$"Node2D4/KinematicBody2D/CollisionShape2D".disabled=false
	$"Timer".start()
	$"TextureRect2".visible=false

func _on_2_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D3".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D4/KinematicBody2D".visible=false
	$"Node2D4/KinematicBody2D2".visible=true
	$"Node2D4/KinematicBody2D3".visible=false
	$"Node2D4/KinematicBody2D4".visible=false
	$"Node2D4/KinematicBody2D5".visible=false
	$"Node2D4/KinematicBody2D6".visible=false
	$"Node2D4/KinematicBody2D2/AnimationPlayer".play("A")
	$"Node2D4/KinematicBody2D2/CollisionShape2D".disabled=false
	$"Timer2".start()
	$"TextureRect2".visible=false

func _on_3_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D3".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D4/KinematicBody2D".visible=false
	$"Node2D4/KinematicBody2D2".visible=false
	$"Node2D4/KinematicBody2D3".visible=true
	$"Node2D4/KinematicBody2D4".visible=false
	$"Node2D4/KinematicBody2D5".visible=false
	$"Node2D4/KinematicBody2D6".visible=false
	$"Node2D4/KinematicBody2D3/AnimationPlayer".play("A")
	$"Node2D4/KinematicBody2D3/CollisionShape2D".disabled=false
	$"Timer3".start()
	$"TextureRect2".visible=false

func _on_4_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D3".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D4/KinematicBody2D".visible=false
	$"Node2D4/KinematicBody2D2".visible=false
	$"Node2D4/KinematicBody2D3".visible=false
	$"Node2D4/KinematicBody2D4".visible=true
	$"Node2D4/KinematicBody2D5".visible=false
	$"Node2D4/KinematicBody2D6".visible=false
	$"Node2D4/KinematicBody2D4/AnimationPlayer".play("A")
	$"Node2D4/KinematicBody2D4/CollisionShape2D".disabled=false
	$"Timer4".start()
	$"TextureRect2".visible=false

func _on_5_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D3".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D4/KinematicBody2D".visible=false
	$"Node2D4/KinematicBody2D2".visible=false
	$"Node2D4/KinematicBody2D3".visible=false
	$"Node2D4/KinematicBody2D4".visible=false
	$"Node2D4/KinematicBody2D5".visible=true
	$"Node2D4/KinematicBody2D6".visible=false
	$"Node2D4/KinematicBody2D5/AnimationPlayer".play("A")
	$"Node2D4/KinematicBody2D5/CollisionShape2D".disabled=false
	$"Timer5".start()
	$"TextureRect2".visible=false

func _on_6_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D3".visible=false
	$"TextureRect/TextureButton".visible=false
	$"Node2D4/KinematicBody2D".visible=false
	$"Node2D4/KinematicBody2D2".visible=false
	$"Node2D4/KinematicBody2D3".visible=false
	$"Node2D4/KinematicBody2D4".visible=false
	$"Node2D4/KinematicBody2D5".visible=false
	$"Node2D4/KinematicBody2D6".visible=true
	$"Node2D4/KinematicBody2D6/AnimationPlayer".play("A")
	$"Node2D4/KinematicBody2D6/CollisionShape2D".disabled=false
	$"Timer6".start()
	$"TextureRect2".visible=false

func _on_TextureButton_pressed():
	$"TextureRect/TextureButton2".visible=true
	$"Node2D3".visible=true
	$"TextureRect2".visible=true

func _on_TextureButton2_pressed():
	$"TextureRect/TextureButton2".visible=false
	$"Node2D3".visible=false
	$"TextureRect2".visible=false


func _on_Timer_timeout():
	$"Node2D4/KinematicBody2D/CollisionShape2D".disabled=true
	$"Timer".stop()
	$"Node2D4/KinematicBody2D".visible=false

func _on_Timer2_timeout():
	$"Node2D4/KinematicBody2D2/CollisionShape2D".disabled=true
	$"Timer2".stop()
	$"Node2D4/KinematicBody2D2".visible=false

func _on_Timer3_timeout():
	$"Node2D4/KinematicBody2D3/CollisionShape2D".disabled=true
	$"Timer3".stop()
	$"Node2D4/KinematicBody2D3".visible=false

func _on_Timer4_timeout():
	$"Node2D4/KinematicBody2D4/CollisionShape2D".disabled=true
	$"Timer4".stop()
	$"Node2D4/KinematicBody2D4".visible=false

func _on_Timer5_timeout():
	$"Node2D4/KinematicBody2D5/CollisionShape2D".disabled=true
	$"Timer5".stop()
	$"Node2D4/KinematicBody2D5".visible=false

func _on_Timer6_timeout():
	$"Node2D4/KinematicBody2D6/CollisionShape2D".disabled=true
	$"Timer6".stop()
	$"Node2D4/KinematicBody2D6".visible=false


func _on_SAVUNMA_TANKI_body_entered(body):
	if body.is_in_group("Düşman 2"):
		Birlik-=5

func _on_SAVUNMA_TANKI_body_exited(body):
	pass # Replace with function body.
