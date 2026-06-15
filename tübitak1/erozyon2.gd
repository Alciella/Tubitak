extends Node2D
var son=false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$Node2D.visible=true
		$ResimPhotoroom2.visible=true
		$ResimPhotoroom.visible=false
		$Area2D2.visible=true
		$Area2D.visible=false
	
	pass # Replace with function body.


func _on_area_2d_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$ResimPhotoroom2.visible=false
		$ResimPhotoroom3.visible=true
		$Area2D3.visible=true
		$Node2D2.visible=true
		$Area2D2.visible=false
		
		pass
	pass # Replace with function body.


func _on_area_2d_3_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$ResimPhotoroom3.visible=false
		$ResimPhotoroom4.visible=true
		$Area2D4.visible=true
		$Node2D3.visible=true
		$Area2D3.visible=false
	
	
	pass # Replace with function body.


func _on_area_2d_4_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$ResimPhotoroom4.visible=false
		
		$Node2D4.visible=true
		$Area2D4.visible=false
		await get_tree().create_timer(0.3).timeout
		$"bitiş".visible=true
		$AudioStreamPlayer2D.play()
	pass # Replace with function body.


func _on_sonraki_pressed() -> void:
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")
	pass # Replace with function body.


func _on_geri_pressed() -> void:
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")
	pass # Replace with function body.
