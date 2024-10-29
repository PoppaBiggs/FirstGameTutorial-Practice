extends Node

var score = 0
@onready var scorelabel: Label = $scorelabel

func add_point():
	#when a coin is collected, it calls this function and adds +1 to the score
	score += 1
	#displays the amount of coins you collected
	scorelabel.text = "You collected " + str(score) + " coins." 
