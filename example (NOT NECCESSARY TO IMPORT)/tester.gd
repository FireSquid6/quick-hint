extends Node2D


@onready var _sprite: Sprite2D = $Sprite2D


func _input(event: InputEvent):
	var image: Texture = QuickHint.load_input_image(event)
	var result = (image != null)
	print(event.as_text() + " returned " + str(result))
	
	if result:
		_sprite.texture = image
