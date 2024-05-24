extends CanvasLayer

class_name UI

@onready var objeto_correto_label = %objetoCorreto
@onready var score_label = %ScoreLabel

func set_label(nome_objeto: String):
	objeto_correto_label.text = nome_objeto

