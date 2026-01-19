extends Camera2D

# sallanma gücü (0 iken sallanmaz)
var shake_strength: float = 0.0

func _process(delta):
	if shake_strength > 0:
		# rastgele küçük değerlerle kamerayı kaydırıyoruz
		offset = Vector2(randf_range(-shake_strength, shake_strength), randf_range(-shake_strength, shake_strength))
	else:
		# sallanma bitince kamerayı eski (0,0) konumuna getir
		offset = Vector2.ZERO

# dışarıdan bu fonksiyonu çağırarak sallanmayı başlatacağız
func sallanmaya_basla(guc: float):
	print("Deprem Fonksiyonu Calisti! Guc: ", guc)
	shake_strength = guc
