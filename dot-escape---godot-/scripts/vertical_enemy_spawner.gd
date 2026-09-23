extends Node2D

@export var vertical_enemy_scene: PackedScene
@export var spawn_x: float = 1100.0
@export var top_spawn_y: float = 100.0
@export var bottom_spawn_y: float = 580.0

func _on_timer_timeout() -> void:
	var enemy = vertical_enemy_scene.instantiate()

	var spawn_y: float

	if randi() % 2 == 0:
		spawn_y = top_spawn_y
	else:
		spawn_y = bottom_spawn_y

	enemy.position = Vector2(spawn_x, spawn_y)
	get_parent().add_child(enemy)
