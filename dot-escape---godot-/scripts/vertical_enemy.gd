extends Area2D

@export var horizontal_speed: float = 150
@export var vertical_speed: float = 100
@export var top_limit: float = 100
@export var bottom_limit: float = 580
var direction = 1 

func _process(delta: float) -> void:
	position.x -= horizontal_speed * delta
	position.y += vertical_speed * direction * delta
	
	if position.y <= top_limit:
		direction = 1
	
	if position.y >= bottom_limit:
		direction = -1

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.position = body.spawn_position

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("horizontal_enemy"):
		direction *= -1
