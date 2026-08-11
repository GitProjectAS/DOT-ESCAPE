extends CanvasLayer

var minutes  = 0 
var seconds  = 0 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$PauseScene.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	seconds += 1

	if seconds >= 60:
		seconds = 0 
		minutes += 1
	GameData.completion_time = (minutes * 60) + seconds

	$TimerLabel.text = str(minutes) + ":" + str(seconds)


func _on_pause_button_pressed() -> void:
	$PauseScene.visible = true
	get_tree().paused = true



	
