extends Control
var y=1
var x=1
var kedi=10
var hold=false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$bina1/TextureRect.visible=false
	pass# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if hold:
		$kavun.position.x=$kavun.position.x+ 1
		$kavun.rotation= $kavun.rotation + 0.1
	pass


func _on_texture_button_button_down() -> void:
	$bina1/TextureRect.visible=true
	hold=true
	pass # Replace with function body.





func _on_texture_button_button_up() -> void:
	$bina1/TextureRect.visible=false
	hold=false
	pass # Replace with function body.
