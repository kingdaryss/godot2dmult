extends Node2D

var atributes_scene
# Declare member variables here. Examples:
# Called when the node enters the scene tree for the first time.
func _ready():
	atributes_scene = get_node("atributes")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_K):
		atributes_scene.show()
		pass



