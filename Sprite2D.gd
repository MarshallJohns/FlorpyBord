extends Sprite2D

const PIPE_SPEED = 200
var velocity = Vector2.ZERO
var angular_speed = PI

func _process(delta):
	position.x -= PIPE_SPEED * delta
 


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	pass # Replace with function body.
