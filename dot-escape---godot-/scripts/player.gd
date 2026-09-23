extends CharacterBody2D

@export var speed: float = 300.0
var spawn_position: Vector2

func _ready() -> void:
	spawn_position = position

func _process(delta: float) -> void:
	var movement = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down"))
	

	velocity = movement.normalized() * speed
	move_and_slide()
