extends Sprite2D
signal point
signal game_over

const PIPE_SPEED = 200
var velocity = Vector2.ZERO
var angular_speed = PI

func _process(delta):
	position.x -= PIPE_SPEED * delta
 


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_area_2d_2_body_entered(body):
	if body.name == "Bird":
		point.emit()
	pass # Replace with function body.


func _on_pipe_body_entered(body):
	print("hit")
	if body.name == "Bird":
		game_over.emit()
	pass # Replace with function body.
