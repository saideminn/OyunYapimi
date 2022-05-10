extends CanvasLayer

func _ready():
	Global.connect("TurGec",self,"TURGEC")

func TURGEC():
	Global.TurSayisi+=1
	Global.Para+=Global.Gelir
	Global.Dusman_Para+=Global.Dusman_Gelir

func _process(delta):
	$ColorRect/TextureRect2/YEMEK.Value=Global.Yemek
	$ColorRect2/Label.Value=Global.TurSayisi
	$ColorRect/TextureRect/PARA.Value=Global.Para
	$ColorRect/TextureRect/GELIR.Value=Global.Gelir

func _on_MAIN_MENU_pressed():
	pass # Replace with function body.

func _on_TURGEC_pressed():
	$ColorRect3.visible=true

func _on_TUR_GEEC_pressed():
	Global.emit_signal("TurGec")
	$ColorRect3.visible=false

func _on_CIKIS_pressed():
	$ColorRect3.visible=false

func _on_ODULLU_VIDYO_pressed():
	pass # Replace with function body.
