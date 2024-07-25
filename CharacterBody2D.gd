extends CharacterBody2D

const GRAVITY = 700.0
const JUMP_POWER = -300.0
var game_over: bool = false


func _physics_process(delta):
	velocity.y += delta * GRAVITY
	var motion = velocity * delta
	move_and_collide(motion)

func stop_game(value):
	game_over = value
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE && !game_over:
			velocity.y += JUMP_POWER
			$Wing.play()
			$Wing.stop()
			

