extends Node2D

var seagull =preload("res://Script/seagull.tscn")

func _ready():
	pass


func _on_timer_timeout() -> void:
	var instance =seagull.instantiate()
	add_child(instance)
