extends CharacterBody2D

const GRAVITY = 700.0
const JUMP_POWER = -300.0


func _physics_process(delta):
	velocity.y += delta * GRAVITY
	var motion = velocity * delta
	move_and_collide(motion)
	
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			velocity.y += JUMP_POWER
			



func _on_area_2d_area_entered(area):
	print(area.name)
