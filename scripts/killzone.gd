extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	print("You died!")
	#slows time down when you die
	Engine.time_scale = 0.5
	#makes character body fall off map after colliding with killzone
	body.get_node("CollisionShape2D").queue_free()
	#starts a timer
	timer.start()


func _on_timer_timeout() -> void:
	#makes time go back to default
	Engine.time_scale = 1.0
	#resets the currect scene when the timer finishes
	get_tree().reload_current_scene()
