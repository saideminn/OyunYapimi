extends KinematicBody2D

export(int)var Sayi = 10
export(int)var Seviye = 1

var Sayii = 0

var Kapali = true
var SSS = 0

var MKM = false

var _1_ = false
var _2_ = false
var _3_ = false
var _4_ = false
var _5_ = false
var _6_ = false

var _1_1 = false
var _2_2 = false
var _3_3 = false
var _4_4 = false
var _5_5 = false
var _6_6 = false

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
	if $"Node2D2/RayCast2D".is_colliding():
		$"Node2D5/KinematicBody2D".visible=true
		$"Node2D5/KinematicBody2D2".visible=false
		$"Node2D5/KinematicBody2D3".visible=false
		$"Node2D5/KinematicBody2D4".visible=false
		$"Node2D5/KinematicBody2D5".visible=false
		$"Node2D5/KinematicBody2D6".visible=false
		$"Node2D5/KinematicBody2D/AnimationPlayer".play("A")
		$"Node2D5/KinematicBody2D/CollisionShape2D".disabled=false
		$"Timer".start()
	elif $"Node2D2/RayCast2D2".is_colliding():
		$"Node2D5/KinematicBody2D".visible=false
		$"Node2D5/KinematicBody2D2".visible=true
		$"Node2D5/KinematicBody2D3".visible=false
		$"Node2D5/KinematicBody2D4".visible=false
		$"Node2D5/KinematicBody2D5".visible=false
		$"Node2D5/KinematicBody2D6".visible=false
		$"Node2D5/KinematicBody2D2/AnimationPlayer".play("A")
		$"Node2D5/KinematicBody2D2/CollisionShape2D".disabled=false
		$"Timer2".start()
	elif $"Node2D2/RayCast2D3".is_colliding():
		$"Node2D5/KinematicBody2D".visible=false
		$"Node2D5/KinematicBody2D2".visible=false
		$"Node2D5/KinematicBody2D3".visible=true
		$"Node2D5/KinematicBody2D4".visible=false
		$"Node2D5/KinematicBody2D5".visible=false
		$"Node2D5/KinematicBody2D6".visible=false
		$"Node2D5/KinematicBody2D3/AnimationPlayer".play("A")
		$"Node2D5/KinematicBody2D3/CollisionShape2D".disabled=false
		$"Timer3".start()
	elif $"Node2D2/RayCast2D4".is_colliding():
		$"Node2D5/KinematicBody2D".visible=false
		$"Node2D5/KinematicBody2D2".visible=false
		$"Node2D5/KinematicBody2D3".visible=false
		$"Node2D5/KinematicBody2D4".visible=true
		$"Node2D5/KinematicBody2D5".visible=false
		$"Node2D5/KinematicBody2D6".visible=false
		$"Node2D5/KinematicBody2D4/AnimationPlayer".play("A")
		$"Node2D5/KinematicBody2D4/CollisionShape2D".disabled=false
		$"Timer4".start()
	elif $"Node2D2/RayCast2D5".is_colliding():
		print("LLL")
		$"Node2D5/KinematicBody2D".visible=false
		$"Node2D5/KinematicBody2D2".visible=false
		$"Node2D5/KinematicBody2D3".visible=false
		$"Node2D5/KinematicBody2D4".visible=false
		$"Node2D5/KinematicBody2D5".visible=true
		$"Node2D5/KinematicBody2D6".visible=false
		$"Node2D5/KinematicBody2D5/AnimationPlayer".play("A")
		$"Node2D5/KinematicBody2D5/CollisionShape2D".disabled=false
		$"Timer5".start()
	elif $"Node2D2/RayCast2D6".is_colliding():
		print("LLL")
		$"Node2D5/KinematicBody2D".visible=false
		$"Node2D5/KinematicBody2D2".visible=false
		$"Node2D5/KinematicBody2D3".visible=false
		$"Node2D5/KinematicBody2D4".visible=false
		$"Node2D5/KinematicBody2D5".visible=false
		$"Node2D5/KinematicBody2D6".visible=true
		$"Node2D5/KinematicBody2D6/AnimationPlayer".play("A")
		$"Node2D5/KinematicBody2D6/CollisionShape2D".disabled=false
		$"Timer6".start()

	if _5_==true and _5_5==true:
		position+=$"Node2D3/Position2D5".position
	elif _6_==true and _6_6==true:
		position+=$"Node2D3/Position2D6".position
	elif _4_==true and _4_4==true:
		position+=$"Node2D3/Position2D4".position
	elif _3_==true and _3_3==true:
		position+=$"Node2D3/Position2D3".position
	elif _2_==true and _2_2==true:
		position+=$"Node2D3/Position2D2".position
	elif _1_==true and _1_1==true:
		position+=$"Node2D3/Position2D".position

func _process(delta):
	if $"Node2D6/RayCast2D".is_colliding():
		_1_ = false
	else:
		_1_ = true
	
	if $"Node2D6/RayCast2D2".is_colliding():
		_2_ = false
	else:
		_2_ = true
	
	if $"Node2D6/RayCast2D3".is_colliding():
		_3_ = false
	else:
		_3_ = true
	
	if $"Node2D6/RayCast2D4".is_colliding():
		_4_ = false
	else:
		_4_ = true
	
	if $"Node2D6/RayCast2D5".is_colliding():
		_5_ = false
	else:
		_5_ = true
		
	if $"Node2D6/RayCast2D6".is_colliding():
		_6_ = false
	else:
		_6_ = true
	
	
	
	if $"Node2D2/RayCast2D".is_colliding():
		_1_1 = false
	else:
		_1_1 = true
	
	if $"Node2D2/RayCast2D2".is_colliding():
		_2_2 = false
	else:
		_2_2 = true
	
	if $"Node2D2/RayCast2D3".is_colliding():
		_3_3 = false
	else:
		_3_3 = true
	
	if $"Node2D2/RayCast2D4".is_colliding():
		_4_4 = false
	else:
		_4_4 = true
	
	if $"Node2D2/RayCast2D5".is_colliding():
		_5_5 = false
	else:
		_5_5 = true
		
	if $"Node2D2/RayCast2D6".is_colliding():
		_6_6 = false
	else:
		_6_6 = true
	
	$ProgressBar.Value=Sayi
	if Sayi<1:
		queue_free()

func _on_Area2D2222_body_entered(body):
	if body.is_in_group("Ben"):
		Sayi-=5
		
	if body.is_in_group("Ben 2"):
		Sayi-=5


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

func _on_Timerr_timeout():
	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("Ben"):
		Sayii+=1

func _on_Area2D_body_exited(body):
	if body.is_in_group("Ben"):
		Sayii-=1


func _on_Area2D2_body_entered(body):
	if body.is_in_group("Ben"):
		Sayii+=1

func _on_Area2D2_body_exited(body):
	if body.is_in_group("Ben"):
		Sayii-=1


func _on_Area2D3_body_entered(body):
	if body.is_in_group("Ben"):
		Sayii+=1

func _on_Area2D3_body_exited(body):
	if body.is_in_group("Ben"):
		Sayii-=1


func _on_Area2D4_body_entered(body):
	if body.is_in_group("Ben"):
		Sayii+=1

func _on_Area2D4_body_exited(body):
	if body.is_in_group("Ben"):
		Sayii-=1


func _on_Area2D5_body_entered(body):
	if body.is_in_group("Ben"):
		Sayii+=1

func _on_Area2D5_body_exited(body):
	if body.is_in_group("Ben"):
		Sayii-=1


func _on_Area2D6_body_entered(body):
	if body.is_in_group("Ben"):
		Sayii+=1

func _on_Area2D6_body_exited(body):
	if body.is_in_group("Ben"):
		Sayii-=1
