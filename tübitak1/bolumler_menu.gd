extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if GameState.unlocked_levels["yangin"]:
		$Panel/BolumlerGrid/btn_yangın/KilitKatman.visible = false
		$Panel/BolumlerGrid/btn_yangın.disabled = false
	if GameState.unlocked_levels["erozyon"]:
		$Panel/BolumlerGrid/btn_erozyon/KilitKatman.visible = false
		$Panel/BolumlerGrid/btn_erozyon.disabled = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_geri_pressed() -> void:
	get_tree().change_scene_to_file("res://ana_menu.tscn")


func _on_deprem_pressed() -> void:
	get_tree().change_scene_to_file("res://bölüm_1_deprem.tscn")


func _on_btn_yangın_pressed() -> void:
	get_tree().change_scene_to_file("res://bolum_1_yangın.tscn")
	pass # Replace with function body.


func _on_btn_erozyon_pressed() -> void:
	get_tree().change_scene_to_file("res://erozyon.tscn")
	pass # Replace with function body.
