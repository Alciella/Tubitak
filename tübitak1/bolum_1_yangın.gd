extends Node2D
var bitis=0
var bolum=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if bitis==14:
		$"bitiş".visible=true
		
	pass


func _on_ateş_pressed() -> void:
	$"ateş".visible=false
	$Kagit.visible=false

	$Kagit2.visible=true
	bolum=1
	$butonlar/Sigara.pulse()
	$butonlar/TextureButton.pulse()
	$butonlar/TextureButton2.pulse()
	$butonlar/TextureButton3.pulse()
	$butonlar/TextureButton4.pulse()
	$butonlar/TextureButton5.pulse()
	$butonlar/TextureButton6.pulse()
	$butonlar/TextureButton7.pulse()
	$butonlar/TextureButton8.pulse()
	$butonlar/TextureButton9.pulse()
	$butonlar/TextureButton10.pulse()
	$butonlar/TextureButton11.pulse()
	$butonlar/TextureButton12.pulse()
	$butonlar/TextureButton13.pulse()
	pass # Replace with function body.


func _on_sigara_pressed()  -> void:
	if bolum==1:
		$butonlar/Sigara.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_2_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton2.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_3_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton3.visible=false
		bitis=bitis+1
		
	pass # Replace with function body.


func _on_texture_button_4_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton4.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_5_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton5.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_6_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton6.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_7_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton7.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_8_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton8.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_9_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton9.visible=false
		bitis=bitis+1
	pass # Replace with function body.


func _on_texture_button_10_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton10.visible=false
		bitis=bitis+1 # Replace with function body.


func _on_texture_button_11_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton11.visible=false
		bitis=bitis+1 # Replace with function body.


func _on_texture_button_12_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton12.visible=false
		bitis=bitis+1 # Replace with function body.


func _on_texture_button_13_pressed() -> void:
	if bolum==1:
		$butonlar/TextureButton13.visible=false
		bitis=bitis+1
	pass # Replace with function body.
