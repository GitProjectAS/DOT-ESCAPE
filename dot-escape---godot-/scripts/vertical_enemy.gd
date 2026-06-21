extends Area2D

@export var horizontal_speed = 150
@export var vertical_speed = 100
@export var top_limit = 100
@export var bottom_limit = 580


var direction = 1 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= horizontal_speed * delta
	position.y += vertical_speed * direction * delta

	if position.y <= top_limit:
		direction = 1

	if position.y >= bottom_limit:
		direction = -1


func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		body.position = body.spawn_position
