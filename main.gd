extends Node

@export var pipes_scene : PackedScene



# Called when the node enters the scene tree for the first time.
func _ready():
	$PipeSpawnTimer.start()
	get_tree().call_group("pipes", "queue_free")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pipe_spawn_timer_timeout():
	print("timeout")
	var spawn_point = $PipeSpawner.position
	var pipes = pipes_scene.instantiate()
	pipes.position = spawn_point
	add_child(pipes)
	pass # Replace with function body.
