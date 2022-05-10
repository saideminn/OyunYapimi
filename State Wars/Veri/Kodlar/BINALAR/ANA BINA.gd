extends Area2D

signal Yenildin
export(int)var Taraf = 1

func _ready():
	if Taraf==1:
		pass
	elif Taraf==2:
		$TextureRect.material=preload("res://Veri/Shader/ANA BINA.tres")

func _process(delta):
	pass

func _on_ANA_BINA_body_entered(body):
	if body.is_in_group("Düşman"):
		emit_signal("Yenildin")
