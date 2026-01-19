extends Node2D
var bitiş=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bitiş=0
	$Oda/resimler/flashlight.visible=false
	$"Oda/resimler/yanlış".visible=false
	$"Oda/resimler/düdük".visible=false
	$Oda/resimler/su.visible=false
	$Oda/resimler/yemek.visible=false
	$Oda/resimler/eldiven2.visible=false
	$Oda/resimler/telsiz.visible=false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if bitiş==6:
		$"Oda/bitiş".visible=true
		pass
	pass


func _on_flashlight_pressed() -> void:
	$Oda/resimler/flashlight.visible=true
	$"Oda/resimler/flashlight2/Çizgi1".visible=true
	bitiş=bitiş+1
	$Oda/butonlar/flashlight_button.visible=false
	pass # Replace with function body.


func _on_top_interactive_pressed() -> void:
	$"Oda/resimler/yanlış".açılıp_kaybol()
	pass # Replace with function body.


func _on_düdük_button_pressed() -> void:
	$"Oda/resimler/düdük".visible=true
	$"Oda/resimler/düdük2/Çizgi2".visible=true
	bitiş=bitiş+1
	$"Oda/butonlar/düdük_button".visible=false
	pass # Replace with function body.


func _on_su_button_pressed() -> void:
	$Oda/resimler/su.visible=true
	$"Oda/resimler/su2/Çizgi3".visible=true
	bitiş=bitiş+1
	$Oda/butonlar/su_button.visible=false
	pass # Replace with function body.


func _on_eldiven_button_pressed() -> void:
	$Oda/resimler/eldiven2.visible=true
	$"Oda/resimler/eldiven/Çizgi4".visible=true
	bitiş=bitiş+1
	$Oda/butonlar/eldiven_button.visible=false
	pass # Replace with function body.


func _on_yemek_buton_pressed() -> void:
	
	$Oda/resimler/yemek.visible=true
	$"Oda/resimler/yemek2/Çizgi5".visible=true
	bitiş=bitiş+1
	$Oda/butonlar/yemek_buton.visible=false
	pass # Replace with function body.


func _on_telsiz_button_pressed() -> void:
	$Oda/resimler/telsiz.visible=true
	$"Oda/resimler/telsiz2/Çizgi6".visible=true
	bitiş=bitiş+1
	$Oda/butonlar/telsiz_button.visible=false
	pass # Replace with function body.


func _on_oyun_konsol_button_pressed() -> void:
	$"Oda/resimler/yanlış".açılıp_kaybol()
	pass # Replace with function body.


func _on_ayıcık_button_pressed() -> void:
	$"Oda/resimler/yanlış".açılıp_kaybol()
	pass # Replace with function body.


func _on_cips_button_pressed() -> void:
	$"Oda/resimler/yanlış".açılıp_kaybol()
	pass # Replace with function body.


func _on_flashlight_button_4_pressed() -> void:
	$"Oda/resimler/yanlış".açılıp_kaybol()
	pass # Replace with function body.


func _on_geri_pressed() -> void:
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")
	pass # Replace with function body.
