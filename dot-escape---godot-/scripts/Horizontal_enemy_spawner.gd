extends Node2D

@export var enemy_scene: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()

	enemy.position = Vector2(
		1100,
		randf_range(100, 500)
	)

	get_parent().add_child(enemy)
