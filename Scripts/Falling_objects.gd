extends Area2D

class_name Objects

@export var horizontal_speed = 0
@export var vertical_speed = 35

func _ready():
	set_process(true)

func _process(delta):
	position.y += delta * vertical_speed
	
func _on_area_entered(area):
	if self.name == Global.nome_objeto:
		print("objeto correto")
		queue_free()
	else: 
		print("objeto errado")
		queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
