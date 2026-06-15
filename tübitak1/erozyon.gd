extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	$Kureksizusak.visible=false
	$Sprite2D.visible=true
	$ok.visible=true
	$Area2D.visible=true
	$TextureButton.visible=false
	pass # Replace with function body.
	


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$Yarmtarac.visible=true
		$ok2.visible=true
		$ok.visible=false
		$Area2D.visible=false
		$Area2D2.visible=true
	
	pass # Replace with function body.


func _on_area_2d_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$Tumtarac.visible=true
		$Area2D2.visible=false
		$ok2.visible=false
		await get_tree().create_timer(0.3).timeout
		$"bitiş".visible=true
		$AudioStreamPlayer2D.play()
	pass # Replace with function body.


func _on_geri_pressed() -> void:
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")
	pass # Replace with function body.


func _on_sonraki_pressed() -> void:
	get_tree().change_scene_to_file("res://erozyon2.tscn")
	pass # Replace with function body.
