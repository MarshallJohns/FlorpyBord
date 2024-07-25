extends Node

@export var pipes_scene : PackedScene
var score = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	print(self)
	$PipeSpawnTimer.start()
	get_tree().call_group("pipes", "queue_free")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pipe_spawn_timer_timeout():
	var top = 144.0
	var bottom = 489
	var random_y = randf_range(top, bottom)
	var spawn_point = $PipeSpawner.position
	var pipes = pipes_scene.instantiate()
	pipes.position.y = random_y
	add_child(pipes)
	#pipes.connect("point", self, "_on_pipes_point")
	pass # Replace with function body.
