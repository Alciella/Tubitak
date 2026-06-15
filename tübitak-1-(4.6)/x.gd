extends TextureRect

var tween: Tween
func açılıp_kaybol():
	$"../wrong".play()
	if tween:
		tween.kill()
	visible=true
	modulate.a=1
	tween=create_tween()
	tween.tween_property(self,"modulate:a",1,0.1)
	tween.tween_property(self,"modulate:a",0,0.5)
	tween.finished.connect(func():
		visible=false
		)
	
	pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
