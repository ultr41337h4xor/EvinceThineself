extends Camera2D

var zoomcurrent = Vector2(9, 6)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	while zoomcurrent != Vector2(1,1):
		await get_tree().create_timer(0.55).timeout
		zoomcurrent = Vector2(get_zoom())
		set_zoom(Vector2(lerp(zoomcurrent.x,1.0,0.015), lerp(zoomcurrent.y,1.0,0.01)))
