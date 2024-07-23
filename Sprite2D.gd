extends Sprite2D

const PIPE_SPEED = 200
var velocity = Vector2.ZERO
var angular_speed = PI

func _process(delta):
	position.x -= PIPE_SPEED * delta
 
