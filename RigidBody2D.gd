extends RigidBody2D


var speed = 400
var velocity = Vector2.ZERO
var jump_power = 400

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			apply_central_impulse(Vector2(0,-500))
		
