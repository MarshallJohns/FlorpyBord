extends Area2D

# Called when the node is added to the scene.


# This function will be called when a body enters the Area2D.
func _on_body_entered(body):
	if body.name == "Bird":
		print("bird")
