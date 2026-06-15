extends Node2D
var bölüm=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D/Area2D.input_event.connect(_on_click)
	$AnimatedSprite2D2/Area2D.input_event.connect(_on_click2)
	$AnimatedSprite2D3/Area2D.input_event.connect(_on_click3)
	$AnimatedSprite2D4/Area2D.input_event.connect(_on_click4)
	$AnimatedSprite2D5/Area2D.input_event.connect(_on_click5)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if bölüm==5:
		$"bitiş".visible = true
		pass 
	pass
	
	
	
func _on_click(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		
		$AnimatedSprite2D.visible=false
		$su.visible=true
		$su.play("default")
func _on_click5(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		
		$AnimatedSprite2D5.visible=false
		$su5.visible=true
		$su5.play("default")
func _on_click2(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		
		$AnimatedSprite2D2.visible=false
		$su2.visible=true
		$su2.play("default")
func _on_click3(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		
		$AnimatedSprite2D3.visible=false
		$su3.visible=true
		$su3.play("default")
func _on_click4(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		
		$AnimatedSprite2D4.visible=false
		$su4.visible=true
		$su4.play("default")
func _on_su_animation_finished() -> void:

	bölüm=bölüm+1
	$su.visible=false
	pass # Replace with function body.


func _on_su_2_animation_finished() -> void:
	bölüm=bölüm+1
	$su2.visible=false
	pass # Replace with function body.


func _on_su_3_animation_finished() -> void:
	bölüm=bölüm+1
	$su3.visible=false
	pass # Replace with function body.


func _on_su_4_animation_finished() -> void:
	bölüm=bölüm+1
	$su4.visible=false
	pass # Replace with function body.


func _on_su_5_animation_finished() -> void:
	bölüm=bölüm+1
	$su5.visible=false
	pass # Replace with function body.


func _on_geri_pressed() -> void:
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")
	pass # Replace with function body.


func _on_sonraki_pressed() -> void:
	GameState.unlock_level("erozyon")
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")
	pass # Replace with function body.
