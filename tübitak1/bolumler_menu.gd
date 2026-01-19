extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_geri_pressed() -> void:
	get_tree().change_scene_to_file("res://ana_menu.tscn")


func _on_deprem_pressed() -> void:
	get_tree().change_scene_to_file("res://bölüm_1_deprem.tscn")
	print("deprem bölümü çalışıyor")
