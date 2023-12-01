@tool
extends RichTextLabel
class_name RichTextPulse

var bbcode = "pulse"

func _process_custom_fx(char_fx):
	# Get parameters, or use the provided default value if missing.
	var color = char_fx.env.get("color", char_fx.color)
	var height = char_fx.env.get("height", 0.0)
	var freq = char_fx.env.get("freq", 2.0)

	var sined_time = (sin(char_fx.elapsed_time * freq) + 1.0) / 2.0
	var y_off = sined_time * height
	color.a = 1.0
	char_fx.color = char_fx.color.linear_interpolate(color, sined_time)
	char_fx.offset = Vector2(0, -1) * y_off
	return true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
