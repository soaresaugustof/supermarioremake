extends Area2D

class_name ShootingFlower

func _ready():
	connect("area_entered", Callable(self, "_on_area_2d_entered"))

# Quando Mario colidir com o cogumelo
func _on_area_entered(area):
	if area is Player:  # Checa se quem entrou é o Mario
		(area as Player).transform_to_shooting()  # Faz o Mario crescer
		queue_free()  # Remove o cogumelo da cena
