extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween= create_tween()
	tween.set_loops()
	tween.tween_property(self,"scale",Vector2(0.150,0.150),0.6)
	tween.tween_property(self,"scale",Vector2(0.125,0.125),0.6)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
