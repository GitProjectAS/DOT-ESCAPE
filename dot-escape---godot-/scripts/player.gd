extends CharacterBody2D

var speed = 300 

var spawn_position


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_position = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var movement = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down"))
	

	velocity = movement.normalized() * speed
	move_and_slide()
