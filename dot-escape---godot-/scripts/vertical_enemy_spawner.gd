extends Node2D

@export var vertical_enemy_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var enemy = vertical_enemy_scene.instantiate()

	var spawn_y

	if randi() % 2 == 0:
		spawn_y = 100
	else:
		spawn_y = 580

	enemy.position = Vector2(1100, spawn_y)

	get_parent().add_child(enemy)
