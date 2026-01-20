extends Node2D

var bir=0
var iki=0
var üç=0
var bitti=false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween= create_tween()
	tween.set_loops()
	tween.tween_property($ok,"position",$ok.position+Vector2(10,0),0.8)
	tween.tween_property($ok,"position",$ok.position-Vector2(10,0),0.8)
	var tween2= create_tween()
	tween2.set_loops()
	tween2.tween_property($ok2,"position",$ok2.position-Vector2(10,0),0.8)
	tween2.tween_property($ok2,"position",$ok2.position+Vector2(10,0),0.8)
	var tween3= create_tween()
	tween3.set_loops()
	tween3.tween_property($ok3,"position",$ok3.position-Vector2(0,10),0.8)
	tween3.tween_property($ok3,"position",$ok3.position+Vector2(0,10),0.8)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if bir==1 && iki==1 && üç==1 && bitti==false:
		$"menü".visible=false
		$"bitiş".visible=true
		$depremRoot/arkaplan/cocuk3.visible=false
		$cocuk1.visible=true
		$depremRoot/arkaplan.kill()
		bitti=true
		$bitti.play()
		pass
	
	pass


func _on_kitaplık_pressed() -> void:
	$X.açılıp_kaybol()
	pass # Replace with function body.


func _on_cam_kenarı_pressed() -> void:
	$X.açılıp_kaybol()
	pass # Replace with function body.


func _on_sıra_pressed() -> void:
	$ok.visible=false
	$ok2.visible=false
	$ok3.visible=false
	$"depremRoot/arkaplan/kitaplık".visible=false
	$"depremRoot/arkaplan/sıra".visible=false
	$"depremRoot/arkaplan/cam kenarı".visible=false
	$depremRoot/arkaplan/cocuk2.visible=false
	$depremRoot/arkaplan/cocuk3.visible=true
	$"menü".visible=true
	$"doğru".play()
	pass # Replace with function body.


func _on_çök_pressed() -> void:
	if bir==0:
		$"menü/Çök".visible=true
		bir=1
		$"doğru".play()
	pass # Replace with function body.
	



func _on_kapan_pressed() -> void:
	if bir==1:
		$"menü/Kapan".visible=true
		iki=1
		$"doğru".play()
	else:
		$X.açılıp_kaybol()
	pass # Replace with function body.



func _on_tutun_pressed() -> void:
	if bir==1 && iki==1:
		$"menü/Tutun".visible=true
		üç=1
		$"doğru".play()
	else:
		$X.açılıp_kaybol()
		pass 
	pass # Replace with function body.


func _on_geri_pressed() -> void:
	get_tree().change_scene_to_file("res://bolumler_menu.tscn")
	pass # Replace with function body.
