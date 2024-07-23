extends Area2D


func _on_body_entered(body):
		print("Collision detected with: ", body.name)
