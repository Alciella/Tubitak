extends Control

# ayarlar panelini tanımlıyoruz
@onready var ayarlar_paneli = $AyarlarPaneli

func _ready():
	# oyun açılınca panel kapalı olur
	ayarlar_paneli.visible = false

# oyna butonu
func _on_oyna_butonu_pressed():
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")

# ayarlar butonu
func _on_ayarlar_pressed():
	# paneli görünür yaptık
	ayarlar_paneli.visible = true

# çıkış btonu
func _on_cikis_pressed():
	# oyunu kapatır
	get_tree().quit()

# paneldeki geri butonu
func _on_geri_pressed(): 
	# paneli gizle
	ayarlar_paneli.visible = false
