extends Label


func _ready():
	text = String(Global.highscore)
	
func _process(delta):
	if(Global.points > Global.highscore):
		Global.highscore = Global.points
