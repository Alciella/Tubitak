extends TextureRect
var tween: Tween

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tween= create_tween()
	tween.set_loops()
	tween.tween_property(self,"position",$".".position+Vector2(3,0),0.2)
	tween.tween_property(self,"position",$".".position-Vector2(3,0),0.2)
	pass # Replace with function body


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func kill():
	tween.kill()
