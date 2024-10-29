extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	
	#calls the addpoint function in gamemanager when a coin is collected
	game_manager.add_point()
	
	#deletes coin after collection
	animation_player.play("pickup")
