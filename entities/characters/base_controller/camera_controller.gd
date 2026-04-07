extends Marker3D

@export var sensitiity: float = 0.01
var input: Vector2

func _physics_process(delta: float) -> void:
	get_parent().rotation.y += -input.x * sensitiity
	rotation.x += -input.y * sensitiity
	rotation.x = clampf(rotation.x, deg_to_rad(-90), deg_to_rad(90))
	input = Vector2.ZERO


func _input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		input = event.screen_relative
	
