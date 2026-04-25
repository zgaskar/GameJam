extends Node2D

var SeagullScene = preload("res://Script/seagull.tscn")

func _on_timer_timeout() -> void:
	var instance = SeagullScene.instantiate()
	add_child(instance)
func _ready():
	$Seagull.play()
